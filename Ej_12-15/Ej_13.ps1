# Ej_13.ps1
# Me piden los datos de fabricante, modelo y número de
#    serie de una máquina, la información de la BIOS,
#    el tipo de Sistema Operativo, la información de la CPU
#    (fabricante, tipo, velocidad,…), cantidad de memoria,
#    información de disco, red…

# Variable del ordenador local
$strComputer =”.”

# Creamos una variable que contiene el objeto WMI
$colItems = Get-WmiObject Win32_ComputerSystem -Namespace “root\CIMV2" `
    -ComputerName $strComputer

# Usamos un bucle para imprimir la información necesaria
foreach ($objItem in $colItems) {
    “Fabricante Ordenador: ”+$objItem.Manufacturer
    “Modelo Ordenador: ”+$objItem.Model
    “Total Memoria: ”+$objItem.TotalPhysicalMemory+"Bytes"
}
# Ahora la redefinimos para sacar los datos de la BIOS
$colItems = Get-WmiObject Win32_BIOS -Namespace "root\CIMV2" `
    -computername $strComputer

foreach($objItem in $colItems) {
    “BIOS: ”+$objItem.Description
    “Versión: ”+$objItem.SMBIOSBIOSVersion+”.”+`
        $objItem.SMBIOSMajorVersion+”.”+$objItem.SMBIOSMinorVersion
    “Serial Number: ”+$objItem.SerialNumber
}

# Vamos con el sistema operativo
$colItems = Get-WmiObject Win32_OperatingSystem -Namespace “root\CIMV2" `
    -Computername $strComputer

foreach($objItem in $colItems) {
    “Sistema Operativo: ”+$objItem.Name
}

# Información de la CPU
$colItems = Get-WmiObject Win32_Processor -Namespace “root\CIMV2" `
    -Computername $strComputer

foreach($objItem in $colItems) {
    “Procesador:”+$objItem.DeviceID+" "+$objItem.Name
}

# Información de discos
$colItems = Get-WmiObject Win32_DiskDrive -Namespace “root\CIMV2" `
    -ComputerName $strComputer

foreach($objItem in $colItems) {
    “Disco: ”+$objItem.DeviceID
    “Tamaño:"+$objItem.Size + "bytes”
    “Tipo de disco: ”+$objItem.InterfaceType
    "Tipo de medio: ”+$objItem.MediaType
}

# Información de la red
$colItems = Get-WmiObject Win32_NetworkAdapterConfiguration -Namespace “root\CIMV2" `
    -ComputerName $strComputer | where{$_.IPEnabled -eq “True”}

foreach($objItem in $colItems) {
    “DHCP habilitado: ”+$objItem.DHCPEnabled
    “Dirección IP: ”+$objItem.IPAddress
    “Máscara de subred:"+$objItem.IPSubnet
    “Gateway: ”+$objItem.DefaultIPGateway
    “Dirección MAC:”+$ojbItem.MACAddress
}
