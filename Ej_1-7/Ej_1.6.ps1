# Ej_1.6.ps1
# Tabla de multiplicar de un número

[int]$n = Read-Host
[int]$i = 0

do {
    "$n * $i = " + $n*$i
    $i++
} while ($i -le 10)

