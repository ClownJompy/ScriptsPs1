# Ej_12.2.ps1
# Mostrar los programas que se inician cuando
#    arranca tu ordenador (valores de la rama
#    HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersi .\CurrentUser .\CurrentUser

Get-ItemProperty HKCU:\Software\Microsoft\Windows\CurrentVersion\Run

