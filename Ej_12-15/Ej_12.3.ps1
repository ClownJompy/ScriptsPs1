# Ej_12.3.ps1
# Crear una entrada en el registro llamada Clave en la rama
#    HKLM:\SOFTWARE\Microsoft con el valor “Hola, caracola”

New-Item –path HKLM:\SOFTWARE\Clave –Value “Hola caracola”

Get-ChildItem HKLM:\SOFTWARE\Clave

"-"*60
Get-ItemProperty HKLM:\SOFTWARE\Clave

Remove-Item HKLM:\SOFTWARE\Clave
