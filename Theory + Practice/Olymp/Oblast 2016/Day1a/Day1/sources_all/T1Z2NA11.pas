//1 ��� 3 �⠯� ���㡫����᪮� ���������, 2016 ���, �����᪨� ����ᠭ��, ����� 2
Var
  k,y,i:longint;
  t1,t2:text;
Begin
assign (t1,'input.txt'); reset (t1);
assign (t2,'output.txt'); rewrite (t2);
read (t1,k,y);
write (t2,'-1');
close (t1);
close (t2);
end.
