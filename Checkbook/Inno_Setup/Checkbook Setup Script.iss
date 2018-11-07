[Setup]
AppId={{8B5B8A60-A06B-4240-9CAD-1464B7A6B4E9}
AppName=Checkbook
AppCopyright=Copyright © 2018 Christopher Mackay
AppVersion=1.6.3
VersionInfoVersion=1.6.3
AppVerName=Checkbook
AppPublisher=Christopher Mackay
AppPublisherURL=https://cmackay732.github.io/CheckbookWebsite/
AppSupportURL=https://cmackay732.github.io/CheckbookWebsite/checkbook_help/checkbook_help.html
AppUpdatesURL=github.com/cmackay732/Checkbook/releases/tag/v1.6.3
DefaultDirName={pf}\Christopher Mackay\Checkbook
DefaultGroupName=Checkbook
OutputDir=C:\Programming\Checkbook\CheckbookPackaging\Checkbook\Inno_Setup
OutputBaseFilename=Checkbook Setup
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\Checkbook.exe
DisableDirPage=yes
LicenseFile=C:\Programming\Checkbook\CheckbookPackaging\Checkbook\Packaging\LICENSE.txt
PrivilegesRequired=admin

[Registry]
Root: HKCR; Subkey: ".cbk"; ValueType: string; ValueName: ""; ValueData: "CheckbookEXT"; Flags: uninsdeletekey
Root: HKCR; Subkey: "CheckbookEXT"; ValueType: string; ValueName: ""; ValueData:"Checkbook Ledger"; Flags: uninsdeletekey
Root: HKCR; Subkey: "CheckbookEXT\DefaultIcon"; ValueType: string; ValueName: ""; ValueData:"{app}\Icons\Checkbook Icon.ico"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".whf"; ValueType: string; ValueName: ""; ValueData: "Checkbook_Scenario_EXT"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Checkbook_Scenario_EXT"; ValueType: string; ValueName: ""; ValueData:"Checkbook Scenario File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Checkbook_Scenario_EXT\DefaultIcon"; ValueType: string; ValueName: ""; ValueData:"{app}\Icons\Scenario Icon.ico"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".bgt"; ValueType: string; ValueName: ""; ValueData: "Checkbook_Budget_EXT"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Checkbook_Budget_EXT"; ValueType: string; ValueName: ""; ValueData:"Checkbook Budget File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Checkbook_Budget_EXT\DefaultIcon"; ValueType: string; ValueName: ""; ValueData:"{app}\Icons\Budgets Icon.ico"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".cks"; ValueType: string; ValueName: ""; ValueData: "Checkbook_Settings_EXT"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Checkbook_Settings_EXT"; ValueType: string; ValueName: ""; ValueData:"Checkbook Settings File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Checkbook_Settings_EXT\DefaultIcon"; ValueType: string; ValueName: ""; ValueData:"{app}\Icons\Settings Icon.ico"; Flags: uninsdeletekey

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "C:\Programming\Checkbook\CheckbookPackaging\Checkbook\Packaging\Checkbook.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Programming\Checkbook\CheckbookPackaging\Checkbook\Packaging\Icons\Packaging Icons\Checkbook Icon.ico"; DestDir: "{app}\Icons";
Source: "C:\Programming\Checkbook\CheckbookPackaging\Checkbook\Packaging\Icons\Packaging Icons\Scenario Icon.ico"; DestDir: "{app}\Icons";
Source: "C:\Programming\Checkbook\CheckbookPackaging\Checkbook\Packaging\Icons\Packaging Icons\Settings Icon.ico"; DestDir: "{app}\Icons";
Source: "C:\Programming\Checkbook\CheckbookPackaging\Checkbook\Packaging\Icons\Packaging Icons\Budgets Icon.ico"; DestDir: "{app}\Icons";
Source: "C:\Programming\Checkbook\CheckbookPackaging\Checkbook\Packaging\CheckbookMessage.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Programming\Checkbook\CheckbookPackaging\Checkbook\Packaging\LICENSE.txt"; DestDir: "{app}";
Source: "C:\Programming\Checkbook\CheckbookPackaging\Checkbook\Packaging\Example Ledger.cbk"; DestDir: "{userdocs}\My Checkbook Ledgers\Example Ledger";

[Icons]
Name: "{group}\Checkbook"; Filename: "{app}\Checkbook.exe"
Name: "{commondesktop}\Checkbook"; Filename: "{app}\Checkbook.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Checkbook.exe"; Description: "{cm:LaunchProgram,Checkbook}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{localappdata}\Chris Mackay"