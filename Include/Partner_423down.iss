// ���ǿƼ� Inno Setup ��װ����ű� - Partner ѡ��
// Made with love by RainCandy Technology
// �ر��л��֯������

// ���ű��Ĵ�����Ҫ���� Partner Release ��װ��ѡ�

[Run]
; ��ɰ�װʱ���� 423Down
Filename: "https://www.423down.com/"; Description: "���� 423Down ��վ"; Flags: postinstall shellexec skipifsilent unchecked; Check: RCPartnerChk423; 

[Code]
function RCPartnerChk423(): Boolean;
begin  // ����Ŀ¼�Ƿ���423down���ӣ�������������ҳչʾ 423down ��վ��ת��
  result:= false;
  if ((FileExists(ExpandConstant('{src}\423Down.lnk'))) or (FileExists(ExpandConstant('{src}\423Down.url')))) then begin
    result:= true;
  end;
end;