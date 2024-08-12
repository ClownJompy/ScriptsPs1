# Ej_8.3.ps1
# Indicar el nombre de la máquina, el sistema operativo,
#    el identificador de procesador, número de procesadores
#    y nombre de usuario

Set-Location Env:

Get-ChildItem COMPUTERNAME
Get-ChildItem OS
Get-ChildItem PROCESSOR_IDENTIFIER
Get-ChildItem NUMBER_OF_PROCESSORS
Get-ChildItem USERNAME
