; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "軒轅劍參外傳 天之痕"
#define MyAppVersion "2.03"
#define MyAppPublisher "大宇資訊"
#define MyAppExeName "Swd3eLoader.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{79A609E1-88C8-418A-91C8-7F9013592333}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\SOFTSTAR\Swd3e
DefaultGroupName=大宇資訊/軒轅劍參外傳
OutputDir=C:\Users\Administrator\Desktop
OutputBaseFilename=swd3e
SetupIconFile=C:\Swd3e\soft.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesetraditional"; MessagesFile: "compiler:Languages\ChineseTraditional.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Swd3e\Swd3eLoader.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Swd3e\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\軒轅劍三外傳：天之痕"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\soft.ico"
Name: "{group}\符鬼小窩"; Filename: "{app}\Ghost.exe"
Name: "{group}\全屏 軒轅劍參：天之痕"; Filename: "{app}\Swd3eDvd.exe"; IconFilename: "{app}\soft.ico"
Name: "{group}\移除 軒轅劍參：天之痕"; Filename: "{uninstallexe}"; IconFilename: "{app}\Uninstall.ico"
Name: "{commondesktop}\軒轅劍三外傳：天之痕"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\soft.ico";Tasks: desktopicon
Name: "{commondesktop}\符鬼小窩"; Filename: "{app}\Ghost.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

