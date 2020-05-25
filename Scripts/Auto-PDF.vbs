' Set registry key to control PDF output and print an Excel
' file to PDF
' Karl Heinz Kremer - khk@khk.net - 1/18/2013 

Dim fso, exl, exlWkbk

const HKEY_CURRENT_USER = &H80000001

strComputer = "."

Set StdOut = WScript.StdOut
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" _
& strComputer & "\root\default:StdRegProv")
strKeyPath = "SOFTWARE\Adobe\Acrobat Distiller\PrinterJobControl"

' Just in case, create the PrinterJobControl registry key -
' it should already exist
oReg.CreateKey HKEY_CURRENT_USER,strKeyPath
Set fso = CreateObject("Scripting.FileSystemObject")
Set exl = CreateObject("Excel.Application")

exl.Visible = False

If WScript.Arguments.Count = 0 Then
WScript.Quit
Else
For A = 0 To (WScript.Arguments.Count - 1)
If ((Right(WScript.Arguments.Item(A), 3) = "xls" OR Right(WScript.Arguments.Item(A), 4) = "xlsx") AND _
fso.FileExists(WScript.Arguments.Item(A))) Then

' set the registry key
dir = fso.GetParentFolderName(WScript.Arguments.Item(A))
basename = fso.GetBaseName(WScript.Arguments.Item(A))
ext = fso.GetExtensionName(WScript.Arguments.Item(A))

strValueName = "C:\windows\SPLWOW64.exe"
strValue = dir & "\" & basename & ".pdf"
oReg.SetStringValue HKEY_CURRENT_USER,strKeyPath,strValueName,strValue

Set exlWkbk = eXL.Workbooks.Open(WScript.Arguments.Item(A))
exlwkbk.PrintOut , , , , "Adobe PDF"
exlWkbk.Close xlDoNotSaveChanges
End If
Next
End If

eXL.Quit
Set fso = Nothing
Set exl = Nothing