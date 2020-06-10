Option Explicit

Dim xlApp, xlBook

Set xlApp = CreateObject("Excel.Application")
xlApp.Visible = False
xlApp.Application.DisplayAlerts = False

'Open Workbook
Set xlBook = xlApp.Workbooks.Open("D:\OneDrive\Documents\GitHub\RIVAL\Data Engine-State.xlsx")

xlBook.RefreshAll

WScript.Sleep(20000)  'Pause 20 seconds

xlBook.Save  'Save the Workbook

MsgBox "Data Engine-State has been updated!"

XlBook.Close 'Close the Workbook

xlApp.Quit 'Quit Excel

Set xlBook = Nothing

Set xlApp = Nothing
