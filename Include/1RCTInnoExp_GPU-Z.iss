// ���ǿƼ� Inno Setup ��װ����ű� - ��װ������ GPU-Z ��鲽��
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű��Ĵ��뽫 GPU-Z �������ý���װ���飬�Է����û�����������װ���� Repack �İ�װ�����н��й����ų���
// ԭ��������ַ��https://www.techpowerup.com/gpuz/ - �ڴ˱�ʾ��л��

[Files]
; GPU-Z ������
Source: "..\Plugins\GPU-Z\*.*"; Flags: dontcopy nocompression;

[CustomMessages]

[Run]

[Code]
function GPUZNotInstMode(): Boolean;
var
  PathPreference: string;
begin
  result:= false;
  RegQueryStringValue(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir', PathPreference);
  if PathPreference = 'no' then begin
    result:= true;
  end;
end;

function GPUZInstalled(): Boolean;
begin  // ����Ƿ���� GPU-Z ���Ѱ�װģʽ
  result:= false;
  if (GPUZNotInstMode = false) and (RegValueExists(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir')) and (FileExists(ExpandConstant('{reg:HKCU\Software\techPowerUp\GPU-Z,Install_Dir}\GPU-Z.exe'))) then
  begin
    result:= true;
  end;
end;

procedure ButtonOnClickGPUZ(Sender: TObject);
var  // �ڰ�װ����İ�ť����󣬴������� GPU-Z �Ĳ���
  ResultCode: integer;
  languageName: string;
begin
  languageName := ActiveLanguage();
  if (languageName = 'chinesesimp') or (languageName = 'chinesetrad') then
  begin  // ���İ�ȥ���˰�װѯ�ʣ�ֱ�Ӵ򿪾���
    Log('[RainCandy Technology Inno Setup Experience] Info: Installer is running in Chinese, start Chinese version of GPU-Z.');
    ShellExec('', ExpandConstant('{tmp}\gpuz.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
  end else
  begin  // �������İ棬������������û�а�װ�õĳ���
    Log('[RainCandy Technology Inno Setup Experience] Info: Installer is not running in Chinese.');
    if (GPUZInstalled = true) then
    begin  // �����鵽�����а�װģʽ�� GPU-Z����ֱ��������װ�õİ汾
      Log('[RainCandy Technology Inno Setup Experience] Info: An existing installation of GPU-Z has detected. Launching...');
      ShellExec('', ExpandConstant('{reg:HKCU\Software\techPowerUp\GPU-Z,Install_Dir}\GPU-Z.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
    end else
    begin  // ���û��⵽��װ�õ� GPU-Z����д��һ��ע����ֵ�����г���Ȼ����ɾ��
      Log('[RainCandy Technology Inno Setup Experience] Info: No existing installation of GPU-Z has detected. ');
      if not(RegValueExists(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir')) then
      begin
      Log('[RainCandy Technology Inno Setup Experience] Info: Writing registry to avoid GPU-Z installation dialog, then launching...');
        RegWriteStringValue(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir', 'no');
        ShellExec('', ExpandConstant('{tmp}\gpuz.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
        Sleep(5000);
        Log('[RainCandy Technology Inno Setup Experience] Info: Wake up, start cleaning registry...');
        RegDeleteValue(HKCU, 'Software\techPowerUp\GPU-Z', 'Install_Dir');
      end else
      begin
        Log('[RainCandy Technology Inno Setup Experience] Info: Registry does not provide void installation directory...');
        ShellExec('', ExpandConstant('{tmp}\gpuz.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
      end;  
    end;
  end;
end;
