# Ej_4.3.ps1
# Listar los archivos de texto que se encuentren
#   en c:\windows y en todos sus subdirectorios

Get-ChildItem -path "C:\Windows" -include "*.txt" -Recurse
