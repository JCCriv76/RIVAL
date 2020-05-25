Option Explicit

Dim xlApp, xlBook, XlSheet

Set xlApp = CreateObject("Excel.Application")
xlApp.Visible = False
xlApp.Application.DisplayAlerts = False


'Open Workbook
Set xlBook = xlApp.Workbooks.Open("C:\Users\jccri\OneDrive\Documents\GitHub\RIVAL\Data Engine-State.xlsx")

Set xlSheet = xlBook.worksheets.item(1)

'xlBook.RefreshAll  'Refreshes automatically when openned

WScript.Sleep(20000)  'Pause 20 seconds

xlBook.Save  'Save the Workbook

XlBook.Close 'Close the Workbook

xlApp.Quit 'Quit Excel

Set xlSheet = Nothing

Set xlBook = Nothing

Set xlApp = Nothing
