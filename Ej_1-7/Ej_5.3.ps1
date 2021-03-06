# Ej_5.3.ps1
# Presentar en forma de lista los archivos de
#   c:\windows\system32 que sean ejecutables (exe, com, bat, …)
#   mostrando el nombre, tamaño, extensión y si es de solo lectura

Set-Location "C:\Windows\System32"
Get-ChildItem -path "*.exe","*.com",`
    "*.bat","*.cmd","*.vbs","*.ps1" `
    | Format-List -property Name,Length,Extension,IsReadOnly
