Option Explicit

Dim xlApp, xlBook, pvtTable

Set xlApp = CreateObject("Excel.Application")
xlApp.Visible = False
xlApp.Application.DisplayAlerts = False

'Open Data-Engine State
Set xlBook = xlApp.Workbooks.Open("D:\OneDrive\Documents\GitHub\RIVAL\Data Engine-State.xlsx")

xlBook.RefreshAll

WScript.Sleep(20000)  'Pause 20 seconds

xlBook.Save  'Save the Workbook

XlBook.Close 'Close the Workbook

Set xlBook = Nothing

'Open Data-Engine Capacity
Set xlBook = xlApp.Workbooks.Open("D:\OneDrive\Documents\GitHub\RIVAL\Data Engine-Capacity.xlsx")

xlBook.RefreshAll

WScript.Sleep(120000)  'Pause 2 minutes

xlBook.Save  'Save the Workbook

XlBook.Close 'Close the Workbook

Set xlBook = Nothing

'Open Data-Engine Social Distancing
Set xlBook = xlApp.Workbooks.Open("D:\OneDrive\Documents\GitHub\RIVAL\Data Engine-Social Distancing.xlsx")

xlBook.RefreshAll

WScript.Sleep(60000)  'Pause 1 minute

xlBook.Save  'Save the Workbook

XlBook.Close 'Close the Workbook

Set xlBook = Nothing

'Open Workbook
Set xlBook = xlApp.Workbooks.Open("D:\OneDrive\Documents\GitHub\RIVAL\Data Engine-County.xlsx")

xlBook.RefreshAll

WScript.Sleep(120000)  'Pause 2 minutes

'Update pivot table
Set pvtTable = xlBook.Sheets("60-Mile").PivotTables("Pivottable1")
pvtTable.RefreshTable

xlBook.Save  'Save the Workbook

XlBook.Close 'Close the Workbook

MsgBox "All Data Engines have been updated!"

xlApp.Quit 'Quit Excel

Set pvtTable = Nothing

Set xlBook = Nothing

Set xlApp = Nothing