Option Explicit

Dim xlApp, xlBook

Set xlApp = CreateObject("Excel.Application")
xlApp.Visible = False
xlApp.Application.DisplayAlerts = False

'Open Workbook
Set xlBook = xlApp.Workbooks.Open("D:\OneDrive\Documents\GitHub\RIVAL\Data Engine-Capacity.xlsx")

xlBook.RefreshAll

WScript.Sleep(120000)  'Pause 2 minutes

xlBook.Save  'Save the Workbook

MsgBox "Data Engine-Capacity has been updated!"

XlBook.Close 'Close the Workbook

xlApp.Quit 'Quit Excel

Set xlBook = Nothing

Set xlApp = Nothing
