# Ej_2.3.ps1
# Escribir el número de horas y responder
#   con semanas, días y horas

[int]$n = Read-Host "Indica el número de horas"
[int]$semanas = 0
[int]$dias = 0
[int]$horas = 0

$horas = $n % 24
$dias = [System.Math]::Truncate($n / 24)
$semanas = [System.Math]::Truncate($dias / 7)
$dias = $dias % 7

"Desglose de horas (sobre $n horas):"
"- Semanas: $semanas"
"- Días: $dias"
"- Horas: $horas"
