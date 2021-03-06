# Ej_11.3.2.ps1
# Indicar los días que comprende el fichero,
#   mostrando el primer y último acceso

Set-Location 'F:\Documents\Cursos\2011-06 - Administrador de redes\Administrador de redes - Mód. 3 PowerShell\Ejemplos'

$hora1 = Get-Date

Get-content ".\access_log" | `
    ForEach-Object {
        $datos = $_ -split " ",12
        $fecha = $datos[3]
        $fechalim = $fecha -replace "\[",""
        $fechaarr = $fechalim -split ":",2
        $fechadate = $fechaarr[0]+" "+$fechaarr[1]
        $fechagd = Get-Date $fechadate
        if ($inicio -eq $null) {$inicio = $fechagd}
    }

"Fecha de inicio: $inicio"
$final = $fechagd
"Fecha de final:  $final"
$dias = ($final-$inicio).Days + 1
"Días que comprende: $dias"

$hora2 = Get-Date

($hora2-$hora1).Seconds

remove-variable inicio,final,fechagd