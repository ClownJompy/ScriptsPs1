# Ej_16.5.ps1
# 16.5. Renombrar el grupo “Contabilidad” por “Finanzas”
# 
$conexion = [ADSI]"WinNT://./Contabilidad,group"

$conexion.PSBase.Rename('Finanzas')
$conexion.SetInfo()

