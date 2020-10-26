# Ej_4.4.ps1
# Crear un fichero 'listado.txt' en el que se incluyan
#   todos los ficheros ejecutables (*.exe) que haya en
#   el disco duro y en otra unidad (CD, por ejemplo)

Get-ChildItem -path "C:\","E:\" -include "*.exe" -Recurse > listado.txt

