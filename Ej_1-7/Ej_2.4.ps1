# Ej_2.4.ps1
# Solicitar una letra e informar si es vocal

[char]$letra = Read-Host "Escribe una letra"

switch ($letra){
    "a" {"La letra $letra es una vocal"}
    "e" {"La letra $letra es una vocal"}
    "i" {"La letra $letra es una vocal"}
    "o" {"La letra $letra es una vocal"}
    "u" {"La letra $letra es una vocal"}
    Default {"La letra $letra es una consonante"}
}
