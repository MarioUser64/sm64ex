If $CmdLine[0] > 0 Then
        Switch $CmdLine[1]
		    Case "us"
		       $ParentDir = StringLeft(@scriptDir,StringInStr(@scriptDir,"\",0,-1)-1)
               $search = FileFindFirstFile($ParentDir & "\build\" & $CmdLine[1] & "_pc\*.exe")
               $file = FileFindNextFile($search)
			   Sleep(10)
			   $sFile = $ParentDir & "\build\" & $CmdLine[1] & "_pc\" & $file
			   $sLink = $ParentDir & "\build\" & $CmdLine[1] & "_pc\Super Mario 64.lnk"
			   $sIcon = @ScriptDir & "\icon.ico"
			   FileCreateShortcut($sFile, $sLink, "", "", Default, $sIcon)

            Case "eu"
		       $ParentDir = StringLeft(@scriptDir,StringInStr(@scriptDir,"\",0,-1)-1)
               $search = FileFindFirstFile($ParentDir & "\build\" & $CmdLine[1] & "_pc\*.exe")
               $file = FileFindNextFile($search)
			   Sleep(10)
			   $sFile = $ParentDir & "\build\" & $CmdLine[1] & "_pc\" & $file
			   $sLink = $ParentDir & "\build\" & $CmdLine[1] & "_pc\Super Mario 64.lnk"
			   $sIcon = @ScriptDir & "\icon.ico"
			   FileCreateShortcut($sFile, $sLink, "", "", Default, $sIcon)

            Case "jp"
		       $ParentDir = StringLeft(@scriptDir,StringInStr(@scriptDir,"\",0,-1)-1)
               $search = FileFindFirstFile($ParentDir & "\build\" & $CmdLine[1] & "_pc\*.exe")
               $file = FileFindNextFile($search)
			   Sleep(10)
			   $sFile = $ParentDir & "\build\" & $CmdLine[1] & "_pc\" & $file
			   $sLink = $ParentDir & "\build\" & $CmdLine[1] & "_pc\Super Mario 64.lnk"
			   $sIcon = @ScriptDir & "\icon.ico"
			   FileCreateShortcut($sFile, $sLink, "", "", Default, $sIcon)

        EndSwitch
EndIf