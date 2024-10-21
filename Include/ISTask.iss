// ���ǿƼ� Inno Setup ��װ����ű� - �Ӿ�Ч���������
// Made with love by RainCandy Technology
// ��ת����� GitHub ��֯�˻��� InnoSetupExperience Repo �е� Contributors.md �ļ��鿴��������Ϣ��

// ���ű��������� IsTask �������غ�����
// ��װǰ�ж��Ƿ��н����������У�istask.dll �ļ������� exe �ļ�һ��

[Files]
Source: "..\Plugins\ISTask.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;
//Source: "..\Plugins\ISTask{#RCInnoExpPluginSignMark}.dll"; DestName: "ISTask.dll"; DestDir: {tmp}; Flags: dontcopy nocompression;

[Code]
function RunTask(FileName: AnsiString; bFullpath: Boolean): Boolean;
external 'RunTask@files:ISTask.dll stdcall delayload';

function KillTask(ExeFileName: AnsiString): Integer;
external 'KillTask@files:ISTask.dll stdcall delayload';

function RunTasks(Tasks: AnsiString; bFullpath: Boolean; CheckAll: Boolean): Boolean;
var
  sl: TStringList;
  i: Integer;
begin
  Result := False;
  sl := TStringList.Create;
  try
    sl.Text := Tasks;
    if sl.Count > 0 then
      for i := 0 to sl.Count -1 do 
      begin
        if CheckAll then
        begin
          if i = 0 then Result := RunTask(sl[i], bFullpath)
          else
            Result := Result and RunTask(sl[i], bFullpath);
        end
        else
        if RunTask(sl[i], bFullpath) then
        begin
          Result := True;
          Break;
        end;
      end;
  finally
    sl.Free;
  end;
end;

procedure KillTasks(Tasks: AnsiString);
var
  sl: TStringList;
  i: Integer;
begin
  sl := TStringList.Create;
  try
    sl.Text := Tasks;
    if sl.Count > 0 then
      for i := 0 to sl.Count -1 do KillTask(sl[i]);
  finally
    sl.Free;
  end;
end;

[/Code]

