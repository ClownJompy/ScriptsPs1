# Ej_1.7.ps1
# Divisores de un número

[int]$n = Read-Host "Indica el número"
[int]$i = 1

while ($i -le $n){
    if ($n % $i -eq 0){
        "$i es divisor de $n"
    }
    $i++
}