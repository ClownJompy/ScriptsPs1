# Ej_16.3.ps1
# 16.3. Crear el grupo local 'Contabilidad'
# 
$conexion = [ADSI]"WinNT://."

$grupo = $conexion.Create('group','Contabilidad')
$grupo.Put('Description','Grupo de usuarios de contabilidad')
$grupo.SetInfo()