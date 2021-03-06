; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "軒轅劍參 雲和山的彼端"
#define MyAppVersion "1.03"
#define MyAppPublisher "大宇資訊"
#define MyAppExeName "Swd3Loader.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CD324DBF-E9AD-4B6D-93F6-8BB0DE6EBC95}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\SOFTSTAR\Swd3
DefaultGroupName=大宇資訊/軒轅劍參
OutputDir=C:\Users\Administrator\Desktop
OutputBaseFilename=swd3
SetupIconFile=C:\Swd3\soft.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesetraditional"; MessagesFile: "compiler:Languages\ChineseTraditional.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Swd3\Swd3Loader.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Swd3\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\軒轅劍參"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\soft.ico"
Name: "{group}\全屏 軒轅劍參"; Filename: "{app}\Swd3.exe"; IconFilename: "{app}\soft.ico"
Name: "{group}\移除 軒轅劍參"; Filename: "{uninstallexe}"; IconFilename: "{app}\Uninstall.ico"
Name: "{commondesktop}\軒轅劍參"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\soft.ico";Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

