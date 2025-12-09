#define MyAppName "VideoCaptioner"
#ifndef MyAppVersion
#define MyAppVersion "0.0.0"
#endif

[Setup]
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=VideoCaptioner-Setup-{#MyAppVersion}
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; Copy all files from the temporary dist_installer folder into the application directory
Source: "dist_installer\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\VideoCaptioner.exe"

[Run]
Filename: "{app}\VideoCaptioner.exe"; Description: "Launch {#MyAppName}"; Flags: nowait postinstall skipifsilent
