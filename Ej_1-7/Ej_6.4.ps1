# Ej_6.4.ps1
# Obtener un listado a 3 columnas de los archivos de c:\windows
#   y sus subdirectorios que tengan tamaño mayor de 2 MB y la fecha
#   de último acceso esté entre los últimos 7 días


Get-ChildItem C:\Windows -Recurse |Where-Object {$_.length -ge 2097152 `
-and $_.LastAccessTime -ge "2011/07/13 00:00"}|Format-Wide -column 2 -property name