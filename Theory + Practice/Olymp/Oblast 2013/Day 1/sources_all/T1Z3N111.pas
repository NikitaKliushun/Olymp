{����� ������ ����ਥ��� �.�������� 8 ����� Z3}
program T1Z3N111;
  var a:array[1..100000] of longint;
      b:array[1..100] of longint;
      n,m,i,s,s1,j,AG:longint;
      f1,f2:text;
begin
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 readln(f1,n,m);
 for i:=1 to n do
 for j:=1 to m do
  readln(f1,a[i]);

 for i:=2 to n do
  begin
   for j:=1 to m do
    begin
     while j<=m do
      begin
       s:=s+a[i];
       j:=j+1;
       s1:=s1+a[i+1];
      if s=s1 then AG:=AG+1;
       end;
    end;
  end;
 write(f2,AG);
 close(f2);
 close(f1);
end.


























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































