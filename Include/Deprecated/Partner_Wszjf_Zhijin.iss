// ���ǿƼ� Inno Setup ��װ����ű� - Partner ѡ��
// Made with love by RainCandy Technology
// �ر��л��֯������

// ���ű��Ĵ�����Ҫ���� Partner Release ��װ��ѡ�

[Run]
; ��ɰ�װʱ���ʿ�ϸ��𲩿�
Filename: "http://www.kuguagantian.com/"; Description: "���ʿ�ϸ��𲩿�"; Flags: postinstall shellexec nowait skipifsilent unchecked; Check: RCPartnerChkWszjf;

; ��ɰ�װʱ����֯�����ɲ���
Filename: "http://www.zhijinxuanlv.com/"; Description: "����֯�����ɲ���"; Flags: postinstall shellexec skipifsilent unchecked; Check: RCPartnerChkZhijin;

[Code]
function RCPartnerChkWszjf(): Boolean;
begin  // ����Ŀ¼�Ƿ��п�ϸ��𲩿����ӣ�������������ҳչʾ��Ӧ������վ��ת��
  result:= false;
  if ((FileExists(ExpandConstant('{src}\��ϸ��𲩿�.lnk'))) or (FileExists(ExpandConstant('{src}\��ϸ��𲩿�.url')))) then begin
    result:= true;
  end;
end;

function RCPartnerChkZhijin(): Boolean;
begin  // ����Ŀ¼�Ƿ���֯�����ɲ������ӣ�������������ҳչʾ��Ӧ������վ��ת��
  result:= false;
  if ((FileExists(ExpandConstant('{src}\֯�����ɲ���.lnk'))) or (FileExists(ExpandConstant('{src}\֯�����ɲ���.url')))) then begin
    result:= true;
  end;
end;
