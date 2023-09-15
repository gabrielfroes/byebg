; Para o funcionamento correto, é necessário que este arquivo esteja localizado na pasta "compiler", a qual deve estar localizada no mesmo diretório que a pasta "dist", gerada previamente utilizando o comando "pyinstaller byebg.spec".

#define MyAppName "ByeBg"
#define MyAppVersion "0.1.0"
#define MyOutputBaseFilename "byebg_v0.1.0_win64"
#define MyAppPublisher "Gabriel Froes"
#define MyAppURL "https://github.com/gabrielfroes/byebg"
#define MyAppExeName "byebg.exe"

[Setup]
AppId={{26D52BAF-F16C-4532-BD2E-28E2A339AE48}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf64}\CDFTV\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=.
OutputBaseFilename={#MyOutputBaseFilename}
SetupIconFile=..\dist\byebg\byebg.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
UninstallDisplayName={#MyAppName}
UninstallDisplayIcon={app}\byebg.ico

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
; TODO: Descomentar quando o programa tiver uma GUI
; Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\dist\byebg\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\dist\byebg\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{tmp}\u2net.onnx"; DestDir: "C:\Users\{username}\.u2net"; Flags: external recursesubdirs createallsubdirs skipifsourcedoesntexist onlyifdoesntexist

[Icons]
; TODO: Descomentar quando o programa tiver uma GUI
; Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
; Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Messages]
SetupAppTitle    = {#MyAppName} {#MyAppVersion}
SetupWindowTitle = {#MyAppName} {#MyAppVersion}

[Registry]
; Incluindo os registros para ser possível utilizar a aplicação clicando com o botão direito em cima de uma imagem
; TODO: Transformar em um loop [.jpg, .jpeg, .png, .gif, .bmp, .tiff, .ico, .webp]
Root: HKCR; Subkey: "SystemFileAssociations\.jpg\Shell\Remove Background"; ValueType: string; ValueName: ""; ValueData: "Remover Fundo"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.jpg\Shell\Remove Background"; ValueType: string; ValueName: "Icon"; ValueData: "C:\Program Files\CDFTV\ByeBg\byebg.exe"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.jpg\Shell\Remove Background"; ValueType: none; ValueName: "Extended"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.jpg\Shell\Remove Background\command"; ValueType: string; ValueName: ""; ValueData: """C:\Program Files\CDFTV\ByeBg\byebg.exe"" ""%1"" ""%1_byebg.png"""; Flags: uninsdeletekey

Root: HKCR; Subkey: "SystemFileAssociations\.jpeg\Shell\Remove Background"; ValueType: string; ValueName: ""; ValueData: "Remover Fundo"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.jpeg\Shell\Remove Background"; ValueType: string; ValueName: "Icon"; ValueData: "C:\Program Files\CDFTV\ByeBg\byebg.exe"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.jpeg\Shell\Remove Background"; ValueType: none; ValueName: "Extended"; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "SystemFileAssociations\.jpeg\Shell\Remove Background\command"; ValueType: string; ValueName: ""; ValueData: """C:\Program Files\CDFTV\ByeBg\byebg.exe"" ""%1"" ""%1_byebg.png"""; Flags: uninsdeletekey

Root: HKCR; Subkey: "SystemFileAssociations\.png\Shell\Remove Background"; ValueType: string; ValueName: ""; ValueData: "Remover Fundo"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.png\Shell\Remove Background"; ValueType: string; ValueName: "Icon"; ValueData: "C:\Program Files\CDFTV\ByeBg\byebg.exe"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.png\Shell\Remove Background"; ValueType: none; ValueName: "Extended"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.png\Shell\Remove Background\command"; ValueType: string; ValueName: ""; ValueData: """C:\Program Files\CDFTV\ByeBg\byebg.exe"" ""%1"" ""%1_byebg.png"""; Flags: uninsdeletekey

Root: HKCR; Subkey: "SystemFileAssociations\.gif\Shell\Remove Background"; ValueType: string; ValueName: ""; ValueData: "Remover Fundo"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.gif\Shell\Remove Background"; ValueType: string; ValueName: "Icon"; ValueData: "C:\Program Files\CDFTV\ByeBg\byebg.exe"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.gif\Shell\Remove Background"; ValueType: none; ValueName: "Extended"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.gif\Shell\Remove Background\command"; ValueType: string; ValueName: ""; ValueData: """C:\Program Files\CDFTV\ByeBg\byebg.exe"" ""%1"" ""%1_byebg.png"""; Flags: uninsdeletekey

Root: HKCR; Subkey: "SystemFileAssociations\.bmp\Shell\Remove Background"; ValueType: string; ValueName: ""; ValueData: "Remover Fundo"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.bmp\Shell\Remove Background"; ValueType: string; ValueName: "Icon"; ValueData: "C:\Program Files\CDFTV\ByeBg\byebg.exe"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.bmp\Shell\Remove Background"; ValueType: none; ValueName: "Extended"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.bmp\Shell\Remove Background\command"; ValueType: string; ValueName: ""; ValueData: """C:\Program Files\CDFTV\ByeBg\byebg.exe"" ""%1"" ""%1_byebg.png"""; Flags: uninsdeletekey

Root: HKCR; Subkey: "SystemFileAssociations\.tiff\Shell\Remove Background"; ValueType: string; ValueName: ""; ValueData: "Remover Fundo"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.tiff\Shell\Remove Background"; ValueType: string; ValueName: "Icon"; ValueData: "C:\Program Files\CDFTV\ByeBg\byebg.exe"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.tiff\Shell\Remove Background"; ValueType: none; ValueName: "Extended"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.tiff\Shell\Remove Background\command"; ValueType: string; ValueName: ""; ValueData: """C:\Program Files\CDFTV\ByeBg\byebg.exe"" ""%1"" ""%1_byebg.png"""; Flags: uninsdeletekey

Root: HKCR; Subkey: "SystemFileAssociations\.ico\Shell\Remove Background"; ValueType: string; ValueName: ""; ValueData: "Remover Fundo"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.ico\Shell\Remove Background"; ValueType: string; ValueName: "Icon"; ValueData: "C:\Program Files\CDFTV\ByeBg\byebg.exe"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.ico\Shell\Remove Background"; ValueType: none; ValueName: "Extended"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.ico\Shell\Remove Background\command"; ValueType: string; ValueName: ""; ValueData: """C:\Program Files\CDFTV\ByeBg\byebg.exe"" ""%1"" ""%1_byebg.png"""; Flags: uninsdeletekey

Root: HKCR; Subkey: "SystemFileAssociations\.webp\Shell\Remove Background"; ValueType: string; ValueName: ""; ValueData: "Remover Fundo"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.webp\Shell\Remove Background"; ValueType: string; ValueName: "Icon"; ValueData: "C:\Program Files\CDFTV\ByeBg\byebg.exe"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.webp\Shell\Remove Background"; ValueType: none; ValueName: "Extended"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.webp\Shell\Remove Background\command"; ValueType: string; ValueName: ""; ValueData: """C:\Program Files\CDFTV\ByeBg\byebg.exe"" ""%1"" ""%1_byebg.png"""; Flags: uninsdeletekey

[Code]
var
  DownloadPage: TDownloadWizardPage;

// ====================================================================================================================
function OnDownloadProgress(const Url, FileName: String; const Progress, ProgressMax: Int64): Boolean;
begin
  if Progress = ProgressMax then
    Log(Format('Arquivo baixado com sucesso: %s', [FileName]));
  Result := True;
end;

// ====================================================================================================================
procedure InitializeWizard;
begin
  DownloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), @OnDownloadProgress);
end;

// ====================================================================================================================
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if CurPageID = wpReady then begin    
    // Verificando se u2net já está instalado:
    if FileExists(ExpandConstant('C:\Users\{username}\.u2net\u2net.onnx')) then
    begin
      // Se já está instalado, não precisamos baixar!
      Result := True;
      Exit;
    end;
    
    // Baixando u2net:
    DownloadPage.Clear;
    DownloadPage.Add('https://github.com/danielgatis/rembg/releases/download/v0.0.0/u2net.onnx', 'u2net.onnx', '');
    DownloadPage.Show;
    
    try
      try
        DownloadPage.Download; // Efetivamente baixando o arquivo
        Result := True;
      except
        if DownloadPage.AbortedByUser then
          Log('Abortado pelo usuário.')
        else
          SuppressibleMsgBox(AddPeriod(GetExceptionMessage), mbCriticalError, MB_OK, IDOK);
        Result := False;
      end;
    finally
      DownloadPage.Hide;
    end;
  end else
    Result := True;
end;
