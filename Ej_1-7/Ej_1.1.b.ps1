# Ej_1.1.b.ps1
# Calcula la media de 3 números
#  versión pedir al usuario

[int32]$a = Read-Host
[int32]$b = Read-Host
[int32]$c = Read-Host

[int32]$media = ($a + $b + $c)/3

$media