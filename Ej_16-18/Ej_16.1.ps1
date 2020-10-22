# Ej_16.1.ps1
# Listado de todos los grupos locales
# 
$conexion = [ADSI]"WinNT://."
$conexion.PSBase.Children `
    |Where-Object {$_.PSBase.SchemaClassName -eq 'group'} `
    |ForEach {$_.Name;$_.Description;"*"*50}
