; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "QMK MSYS"
#define MyAppDir "QMK_MSYS"
#define MyAppPublisher "QMK"
#define MyAppURL "https://qmk.fm"
#ifndef MyAppVersion
# define MyAppVersion "2.0.0"
#endif

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{52DB9201-A172-4A79-82C3-83B2E8B85FD8}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={sd}\{#MyAppDir}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=..\.build
OutputBaseFilename={#MyAppDir}
SetupIconFile=icon.ico
Compression=lzma2/max
SolidCompression=yes
UninstallDisplayIcon={app}\icon.ico
ArchitecturesInstallIn64BitMode=x64

[Components]
Name: windowsterminal; Description: "Add QMK MSYS profile to Windows Terminal"; MinVersion: 10.0.19041

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "Other tasks:"; Flags: unchecked
Name: "installdrivers"; Description: "Install drivers"; GroupDescription: "Other tasks:"

[Files]
Source: ".\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\.build\msys64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\.build\drivers\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Dirs]
Name: "{app}"; Permissions:everyone-modify
Name: "{commonappdata}\Microsoft\Windows Terminal\Fragments\QMK"; Components: windowsterminal; Check: IsAdminLoggedOn
Name: "{localappdata}\Microsoft\Windows Terminal\Fragments\QMK"; Components: windowsterminal; Check: not IsAdminLoggedOn

[UninstallDelete]
Type: files; Name: "{commonappdata}\Microsoft\Windows Terminal\Fragments\QMK\qmk-msys.json"
Type: files; Name: "{localappdata}\Microsoft\Windows Terminal\Fragments\QMK\qmk-msys.json"

[Run]
Filename: "{app}\qmk_driver_installer.exe"; WorkingDir: "{app}"; Parameters: " --all --force drivers.txt"; StatusMsg: "Installing Drivers..."; Tasks: installdrivers; Flags: runhidden

[Icons]
Name: "{app}\{#MyAppName}"; Filename: "{app}\conemu\ConEmu64.exe"; Parameters: "-NoSingle -NoUpdate -icon ""{app}\icon.ico"" -title ""{#MyAppName}"" -run ""{app}\usr\bin\bash.exe"" -l -i -cur_console:m:"""""; IconFilename: "{app}\icon.ico"
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\conemu\ConEmu64.exe"; Parameters: "-NoSingle -NoUpdate -icon ""{app}\icon.ico"" -title ""{#MyAppName}"" -run ""{app}\usr\bin\bash.exe"" -l -i -cur_console:m:"""""; IconFilename: "{app}\icon.ico"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\conemu\ConEmu64.exe"; Parameters: "-NoSingle -NoUpdate -icon ""{app}\icon.ico"" -title ""{#MyAppName}"" -run ""{app}\usr\bin\bash.exe"" -l -i -cur_console:m:"""""; IconFilename: "{app}\icon.ico"; Tasks: desktopicon

[Code]

{ ///////////////////////////////////////////////////////////////////// }
procedure InstallWindowsTerminalFragment;
var
  Res:Longint;
  AppPath, JSONDirectory, JSONPath:String;
begin
  if IsAdminInstallMode() then
    JSONDirectory := ExpandConstant('{commonappdata}\Microsoft\Windows Terminal\Fragments\QMK')
  else
    JSONDirectory := ExpandConstant('{localappdata}\Microsoft\Windows Terminal\Fragments\QMK');
  if not ForceDirectories(JSONDirectory) then begin
    LogError('Line {#__LINE__}: Unable to install Windows Terminal Fragment to ' + JSONDirectory);
    Exit;
  end;

  JSONPath := JSONDirectory + '\qmk-msys.json';
  AppPath := ExpandConstant('{app}');
  StringChangeEx(AppPath, '\', '/', True)

  if not SaveStringToFile(JSONPath,
    '{' +
    '  "profiles": [' +
    '    {' +
    '      "guid": "{db1d8c35-5f1f-5c6e-bf9b-ade86c5c16c4}",' +
    '      "name": "QMK MSYS",' +
    '      "commandline": "' + AppPath + '/usr/bin/env.exe MSYSTEM=MINGW64 /usr/bin/bash.exe -i -l",' +
    '      "icon": "' + AppPath + '/icon.ico",' +
    '      "startingDirectory": "%USERPROFILE%"' +
    '    }' +
    '  ]' +
    '}', False) then begin
    LogError('Line {#__LINE__}: Unable to install Windows Terminal Fragment to ' + JSONPath)
  end;
end;

{ ///////////////////////////////////////////////////////////////////// }
function GetUninstallString(): String;
var
  sUnInstPath: String;
  sUnInstallString: String;
begin
  sUnInstPath := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#emit SetupSetting("AppId")}_is1');
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
end;


{ ///////////////////////////////////////////////////////////////////// }
function IsUpgrade(): Boolean;
begin
  Result := (GetUninstallString() <> '');
end;


{ ///////////////////////////////////////////////////////////////////// }
function UnInstallOldVersion(): Integer;
var
  sUnInstallString: String;
  iResultCode: Integer;
begin
{ Return Values: }
{ 1 - uninstall string is empty }
{ 2 - error executing the UnInstallString }
{ 3 - successfully executed the UnInstallString }

  { default return value }
  Result := 0;

  { get the uninstall string of the old app }
  sUnInstallString := GetUninstallString();
  if sUnInstallString <> '' then begin
    sUnInstallString := RemoveQuotes(sUnInstallString);
    if Exec(sUnInstallString, '/SILENT /NORESTART /SUPPRESSMSGBOXES','', SW_HIDE, ewWaitUntilTerminated, iResultCode) then
      Result := 3
    else
      Result := 2;
  end else
    Result := 1;
end;

{ ///////////////////////////////////////////////////////////////////// }
procedure CurStepChanged(CurStep: TSetupStep);
begin
  if (CurStep=ssInstall) then
  begin
    if (IsUpgrade()) then
    begin
      UnInstallOldVersion();
    end;
  end;

  if IsComponentSelected('windowsterminal') then begin
    WizardForm.StatusLabel.Caption:='Adding Windows Terminal profile';
    InstallWindowsTerminalFragment();
  end;
end;
