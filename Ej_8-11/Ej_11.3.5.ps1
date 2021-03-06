# Ej_11.3.5.ps1
# Mostrar cuáles son las 10 páginas más visitadas

Set-Location 'F:\Documents\Cursos\2011-06 - Administrador de redes\Administrador de redes - Mód. 3 PowerShell\Ejemplos'
$paginas = @{}

Get-content ".\access_log" | `
    ForEach-Object {
        $datos = $_ -split " ",12
        $pag_act = $datos[6];
        if ($pag_act -like "*php*" -or $pag_act -like "*htm*"){
            if ($paginas.ContainsKey($pag_act)){
                $paginas[$pag_act]++
            }else{
                $paginas.Add($pag_act,1)
            }
        }
    }

$paginas.GetEnumerator() `
    |Sort-Object -property Value -Descending `
    |Select-Object -first 20 `
    |Format-Table -AutoSize -Property Value,Name
    
$paginas.Clear()
