# Ej_3.4.ps1
# Mostrar los servicios, detener 'Audio de Windows
#   confirmando la acción, volver a mostrar los servicios
#   tanto e PS como en Windows y arrancarlo de nuevo en
#   modo Debug

# 1. Mostrar los servicios
Get-Service

# 2. Parar el servicio 'Audio de Windows'
Stop-Service Audiosrv -Confirm

# 3. Mostrar de nuevo los servicios
Get-Service

# 4. Detenemos para que el usuario vea los servicios en Windows
Invoke-Item "C:\WINDOWS\system32\services.msc"
Sleep 10

# 5. Arrancamos de nuevo el servicio en modo Debug
Start-Service Audiosrv -Debug
