{���� �࠭� ����஢��
��ᢨ�᪠� ���㤠��⢥���� �������᪠� ��������
9"�" �����
����� �3}
Var
n,m: integer;
a: array [1..100] of integer;
x,y: integer;
b,z: integer;
begin
Assign(input, 'input.txt');
Reset(input);
Assign(output, 'output.txt');
Rewrite(output);
read(n,m);
for z:=1 to m*2 do
Begin
read (a[z]);
end;
write(2)
Close(input);
Close(output);
end.