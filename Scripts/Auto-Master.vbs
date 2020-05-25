Option Explicit

Dim xlApp, xlBook, XlSheet

Set xlApp = CreateObject("Excel.Application")
xlApp.Visible = False
xlApp.Application.DisplayAlerts = False


'Open Workbook
Set xlBook = xlApp.Workbooks.Open("C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\RIVAL Master.xlsx")

Set xlSheet = xlBook.worksheets.item(1)

xlBook.RefreshAll  'Refreshes all data connections

WScript.Sleep(10000)  'Pause 10 seconds

xlBook.Save  'Save the Workbook

XlBook.Close 'Close the Workbook

xlApp.Quit 'Quit Excel

Set xlSheet = Nothing

Set xlBook = Nothing

Set xlApp = Nothing