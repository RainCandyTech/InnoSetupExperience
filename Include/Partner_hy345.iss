// ���ǿƼ� Inno Setup ��װ����ű� - Partner ѡ��
// Made with love by RainCandy Technology
// �ر��л��֯������

// ���ű��Ĵ�����Ҫ���� Partner Release ��װ��ѡ�

[Run]
; ��ɰ�װʱ������ѧ������Ӱ��̳
Filename: "http://www.hy345.com/"; Description: "������ѧ������Ӱ��̳"; Flags: postinstall shellexec nowait skipifsilent unchecked; Check: RCChkHy345;

[Code]
function RCChkHy345(): Boolean;
begin  // ����Ŀ¼�Ƿ�����ѧ������Ӱ��̳���ӣ�������������ҳչʾ��վ��ת��
  result:= false;
  if ((FileExists(ExpandConstant('{src}\��ѧ������Ӱ.lnk'))) or (FileExists(ExpandConstant('{src}\��ѧ������Ӱ.url')))) then begin
    result := true;
  end;
end;
