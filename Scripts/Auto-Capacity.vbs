Option Explicit

Dim xlApp, xlBook, XlSheet

Set xlApp = CreateObject("Excel.Application")
xlApp.Visible = False
xlApp.Application.DisplayAlerts = False


'Open Workbook
Set xlBook = xlApp.Workbooks.Open("C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\Data Engine-Capacity.xlsx")

Set xlSheet = xlBook.worksheets.item(1)

'xlBook.RefreshAll  'Refreshes automatically when openned

WScript.Sleep(120000)  'Pause 2 minutes

'Update pivot table
for each ws in xlBook.Worksheets
    for each pt in ws.PivotTables
    pt.RefreshTable
    next pt
next ws

xlBook.Save  'Save the Workbook

XlBook.Close 'Close the Workbook

xlApp.Quit 'Quit Excel

Set xlSheet = Nothing

Set xlBook = Nothing

Set xlApp = Nothing
