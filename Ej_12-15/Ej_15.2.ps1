# Ej_15.2.ps1
# Realizar un informe de los discos en celdas
#    de una hoja de cálculo

$strComputer = "."

$Excel = New-Object -Com Excel.Application
$Excel.visible = $True
$Excel = $Excel.Workbooks.Add()

$Sheet = $Excel.WorkSheets.Item(1)
$Sheet.Cells.Item(1,1) = "PC"
$Sheet.Cells.Item(1,2) = "Letra de unidad"
$Sheet.Cells.Item(1,3) = "Descripción"
$Sheet.Cells.Item(1,4) = "Sistema de archivos"
$Sheet.Cells.Item(1,5) = "Tamaño en GB"
$Sheet.Cells.Item(1,6) = "Espacio libre en GB"

$WorkBook = $Sheet.UsedRange
$WorkBook.Interior.ColorIndex = 4
$WorkBook.Font.ColorIndex = 11
$WorkBook.Font.Bold = $True

$intRow = 2
$colItems = Get-wmiObject -class "Win32_LogicalDisk" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
$Sheet.Cells.Item($intRow,1) = $objItem.SystemName
$Sheet.Cells.Item($intRow,2) = $objItem.DeviceID
$Sheet.Cells.Item($intRow,3) = $objItem.Description
$Sheet.Cells.Item($intRow,4) = $objItem.FileSystem
$Sheet.Cells.Item($intRow,5) = $objItem.Size / 1GB
$Sheet.Cells.Item($intRow,6) = $objItem.FreeSpace / 1GB

$intRow = $intRow + 1

}
$WorkBook.EntireColumn.AutoFit()

