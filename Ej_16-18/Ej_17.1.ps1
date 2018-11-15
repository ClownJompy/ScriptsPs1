# Ej_17.1.ps1
# 17.1. Mostrar todos los usuarios locales
# 
$conexion = [ADSI]"WinNT://."
$conexion.PSBase.Children `
    | Where {$_.PSBase.SchemaClassName -eq 'user'} `
    | ForEach{$_.Name}
