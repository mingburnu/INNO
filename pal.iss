; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "仙劍奇俠傳"
#define MyAppVersion "win98"
#define MyAppPublisher "大宇資訊"
#define MyAppExeName "sdlpal95.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7DBAE7D0-DABF-4E00-9DFE-466BDAB5EF7A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\SOFTSTAR\PAL
DefaultGroupName=大宇資訊/仙劍奇俠傳
DisableProgramGroupPage=yes
OutputDir=C:\Users\Administrator\Desktop
OutputBaseFilename=setup
SetupIconFile=C:\PAL\Logo.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesetraditional"; MessagesFile: "compiler:Languages\ChineseTraditional.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\PAL\sdlpal95.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\PAL\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\移除"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

