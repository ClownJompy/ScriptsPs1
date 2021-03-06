# Ej_14.1.ps1
# Modificar el adaptador de red para que
#    obtenga la dirección IP automáticamente por DHCP

# Creamos una variable que contiene el objeto WMI adaptador de red
$NIC = Get-WmiObject Win32_NetworkAdapterConfiguration `
    |Where {$_.Index -eq 12}

# Habilitamos DHCP
$NIC.EnableDHCP()

# Habilitamos obtener servidores DNS automáticamente
$NIC.SetDNSServerSearchOrder()
