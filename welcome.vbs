Set WshShell = WScript.CreateObject("WScript.Shell")

' Gets the name of the domain and the user
strDomain = WshShell.ExpandEnvironmentStrings("%USERDOMAIN%")
strUser= WshShell.ExpandEnvironmentStrings("%USERNAME%")


' It connects to the server and requires the user
Set objDomain = GetObject("WinNT://" & strDomain)
Set objUser = objDomain.GetObject("user", strUser)


' Extracts user data and puts them in the Data variable.
Dati=        "Good Morning " & objUser.FullName & ", welcome on the CORPORATE domain." & vbcrlf
Dati= Dati & vbcrlf
Dati= Dati & "For any problem, ITdepartment@corporate.com is at your disposal." & vbcrlf
Dati= Dati & vbcrlf
Dati= Dati & "Good job!" & vbcrlf



'Data output.
msgbox Dati,, "Message from IT Department"


'*** End of Program.
