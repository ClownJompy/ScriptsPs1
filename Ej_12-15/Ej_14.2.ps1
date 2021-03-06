# Ej_14.2.ps1
# Modificar el adaptador de red para incluirle todos
#   los datos IP (dirección, máscara, gateway, DNS, …)


# Creamos una variable que contiene el objeto WMI adaptador de red
$NIC = Get-WmiObject Win32_NetworkAdapterConfiguration `
    |Where {$_.Index -eq 12}

$NIC.EnableStatic("192.168.254.104","255.255.255.0")
$NIC.SetGateways("192.168.254.254")
$DNSServers ="80.58.0.33","8.8.8.8"
$NIC.SetDNSServerSearchOrder($DNSServers)
$NIC.SetDynamicDNSRegistration("TRUE")
$NIC.SetWINSServer("192.168.254.101","192.168.254.101")
