Option Explicit

Dim xlApp, xlBook, pvtTable

Set xlApp = CreateObject("Excel.Application")
xlApp.Visible = False
xlApp.Application.DisplayAlerts = False


'Open Workbook
Set xlBook = xlApp.Workbooks.Open("C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\Data Engine-County.xlsx")

xlBook.RefreshAll

WScript.Sleep(120000)  'Pause 2 minutes

'Update pivot table
Set pvtTable = xlBook.Sheets("60-Mile").PivotTables("Pivottable1")
pvtTable.RefreshTable

xlBook.Save  'Save the Workbook

XlBook.Close 'Close the Workbook

MsgBox "Data Engine-County has been updated!"

xlApp.Quit 'Quit Excel

Set pvtTable = Nothing

Set xlBook = Nothing

Set xlApp = Nothing

