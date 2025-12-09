#define MyAppName "VideoCaptioner"
#ifndef MyAppVersion
#define MyAppVersion "0.0.0"
#endif

[Setup]
AppName={#MyAppName}
AppVersion={#MyAppVersion}
; Default installation directory. This will use, in order of precedence:
; 1) command-line parameter /MyAppDir="..." (accessed as {param:MyAppDir})
; 2) built-in /DIR="..." parameter (accessed as {param:dir})
; 3) Program Files
DefaultDirName={param:MyAppDir|{param:dir|{pf}\{#MyAppName}}}
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
