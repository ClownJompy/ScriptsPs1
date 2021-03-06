# Ej_11.3.3.ps1
# Decir cuántas petición GET hay y cuántas POST

$hora1 = Get-Date

[long]$get  = 0
[long]$post = 0
[long]$otro = 0


Get-content ".\access_log" | `
    ForEach-Object {
        $datos = $_ -split " ",12
        $verbo = $datos[5] -replace "`"",""
        if ($verbo -eq "GET"){
            $get++
        }elseif($verbo -eq "POST"){
            $post++
        }else{
            $otro++
        }
    }

"Peticiones GET:   $get"
"Peticiones POST:  $post"
"Otras peticiones: $otro"

$hora2 = Get-Date

($hora2-$hora1).Seconds