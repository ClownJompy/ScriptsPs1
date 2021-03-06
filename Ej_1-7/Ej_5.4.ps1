# Ej_5.4.ps1
# Mostrar en forma de lista los archivos de c:\Archivos de programa
#   y todos sus subdirectorios que tengan extensión .exe, .dll o .ini,
#   agrupándolos por su extensión

# Para Windows Vista, 7, 2008...
# Set-Location "C:\Program Files\"
# Get-ChildItem -path "C:\Program Files\*" -Include "*.exe","*.dll","*.ini" -recurse `
#    |Format-List -Property name -GroupBy extension

# Para XP, ...
Set-Location "C:\Program Files"
Get-ChildItem -path "C:\Program Files\*" -Include "*.exe","*.dll","*.ini" -recurse `
    |Format-List -Property name -GroupBy extension`
