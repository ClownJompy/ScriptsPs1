# Ej_2.1.ps1
# Raíces de una ecuación de 2º grado

[single]$a = Read-Host "Escribe el coeficiente 'a'"
[single]$b = Read-Host "Escribe el coeficiente 'b'"
[single]$c = Read-Host "Escribe el coeficiente 'c'"
[single]$discriminante = 0
[single]$x1 = 0
[single]$x2 = 0

$discriminante = [System.Math]::Pow($b, 2) - (4 * $a * $c)
if ($discriminante -lt 0){
    "Esta ecuación no tiene solución real"
}elseif ($discriminante -eq 0){
    $x1 = (-$b / (2 * $a))
    "Tiene solución doble x = $x1"
}else{
    $x1 = (-$b + [System.Math]::Sqrt($discriminante))/ (2 * $a)
    $x2 = (-$b - [System.Math]::Sqrt($discriminante))/ (2 * $a)
    "Soluciones"
    "  x1 = $x1"
    "  x2 = $x2"
}
