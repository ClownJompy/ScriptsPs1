# Ej_16.2.ps1
# 16.2. Mostrar los miembros del grupo “Administradores” local
# 
$conexion = [ADSI]"WinNT://./Administradores,group"
$conexion.PSBase.Invoke('Members') `
    | foreach{
        $_.GetType().InvokeMember(‘Name’,’GetProperty’,$null,$_,$null)
      }

