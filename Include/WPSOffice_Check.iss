// ���ǿƼ� Inno Setup ��װ����ű� - WPS Office ����װ���
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű��Ĵ�����Ҫ���ڼ�������� WPS Office �Ѱ�װ�汾����Ϣ��

[Code]
function WPSIA32Main(): Boolean;
begin  // ����Ƿ�װ WPS Office 32 λ������       
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\wpsoffice.exe'))) then begin
    result:= true;
  end;
end;

function WPSAMD64Main(): Boolean;
var  // ����Ƿ�װ WPS Office 64 λ������       
  WPSInstArch: string;
begin
  result:= false;
  RegQueryStringValue(HKLM64, 'SOFTWARE\Kingsoft\Office\6.0\Common', 'Architecture', WPSInstArch)
  if (IsWin64) and (WPSInstArch = 'x64') and (FileExists(ExpandConstant('{reg:HKLM64\SOFTWARE\Kingsoft\Office\6.0\Common,InstallRoot}\office6\wpsoffice.exe'))) then begin
    result:= true;
  end;
end;

function WPSHKCUMain(): Boolean;
begin  // ����Ƿ�װ WPS Office �����򣨵��û���װ��      
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKCU\Software\kingsoft\Office\6.0\Common,InstallRoot}\office6\wpsoffice.exe'))) then begin
    result:= true;
  end;
end;

function KPDFIA32Main(): Boolean;
begin  // ����Ƿ�װ��ɽ PDF 32 λ������       
  result:= false;
  if (FileExists(ExpandConstant('{reg:HKLM32\SOFTWARE\Kingsoft\PDF\6.0\Common,InstallRoot}\office6\wpspdf.exe'))) then begin
    result:= true;
  end;
end;

function KSOClassicMode(): Boolean;
var  // ��� WPS Office �Ƿ�Ϊ����ģʽ
  RCTech_KSOAppMode: string;
begin
  result:= false;
  RegQueryStringValue(HKLM32, 'SOFTWARE\Kingsoft\Office\6.0\wpsoffice\Application Settings', 'AppComponentMode', RCTech_KSOAppMode);
  if (RCTech_KSOAppMode = 'classical') then begin
    Log('[RainCandy Technology Inno Setup Experience] Info: WPS Office is in classic mode.');
    result:= true;
  end;
end;
