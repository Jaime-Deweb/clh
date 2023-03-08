; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CLH"
#define MyAppVersion "1.0.1"
#define MyAppPublisher "Jaime Teixeira"
#define MyAppExeName "clh-app.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{EE57131A-1790-42AB-80B5-C92E3D2409D2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\Jaime\Documents\Recursos\Repositories\CLH
OutputBaseFilename=clh-update_{#MyAppVersion}
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"

[InstallDelete]
Type: filesandordirs; Name: "{commonappdata}\CLH\cache\*"

[Dirs]
;Name: "{commonappdata}\CLH\tmp"

[Files]
Source: "{commonappdata}\CLH\data\clh.db"; DestDir: "{commonappdata}\CLH\tmp"; DestName: "backup-clh.db"; Flags: external ignoreversion
Source: "C:\Users\Jaime\htdocs\clh\www\clh\*"; Excludes: "\.git,\public\app_develop.php,\var\*,\.env.local,\.gitignore"; DestDir: "{app}\www\clh"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Run]
;Filename: "{app}\www\clh\migration.bat"; Flags: runhidden
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,CLH}"; Flags: nowait postinstall