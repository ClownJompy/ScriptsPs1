$finicial = ""

Set-Location 'F:\Documents\Cursos\2011-06 - Administrador de redes\Administrador de redes - Mód. 3 PowerShell\Ejemplos'
[string]$separa = "="*70

Get-Content '.\access_log' `
    | ForEach-Object{
        $datos =  $_ -split " ",12
       # $datos[6]
        foreach ($dato in $datos){
            $dato;
        }
        $separa
    }