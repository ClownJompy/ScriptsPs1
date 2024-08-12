# Ej_6.3.ps1
# Listar los archivos que hay en el directorio c:\windows\logs
#   y sus subdirectorios que tengan un tamaño mayor de 100 kB,
#   en forma de lista con las propiedades nombre, tamaño, extensión
#   y fecha de creación


Get-ChildItem "C:\Windows\logs" -Recurse |Where-Object {$_.length -ge 102400}`
|Format-List -Property name,length,extension,creationtime