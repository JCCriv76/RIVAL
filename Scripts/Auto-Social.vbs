Option Explicit

Dim xlApp, xlBook, pvtTable

Set xlApp = CreateObject("Excel.Application")
xlApp.Visible = False
xlApp.Application.DisplayAlerts = False

'Open Data-Engine Social Distancing
Set xlBook = xlApp.Workbooks.Open("C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\Data Engine-Social Distancing.xlsx")

xlBook.RefreshAll

WScript.Sleep(60000)  'Pause 1 minute

xlBook.Save  'Save the Workbook

XlBook.Close 'Close the Workbook

Set xlBook = Nothing

MsgBox "SDS updated!"

xlApp.Quit 'Quit Excel

Set pvtTable = Nothing

Set xlBook = Nothing

Set xlApp = Nothing