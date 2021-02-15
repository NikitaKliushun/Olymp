{Kononchuk Igor Vladimirovich, Minskii raen, 9}
Program Shrek;
var
 f,h:text;
 i,b,c,d,e:longint;
 a:array[2..101] of longint;
BEGIN
 Assign(f,'input.txt');
 Assign(h,'output.txt');
 reset(f);
 rewrite(h);
 readln(f,b);
 for i:=1 to b do
  read(f,a[i]);
 for i:=1 to b-1 do
  begin
   for i:=1 to b-1 do
    begin
     if a[i]<a[i+1]
      then
       begin
        a[b+1]:=a[i];
        a[i]:=a[i+1];
        a[i+1]:=a[b+1];
       end;
    end;
  end;
 c:=b div 2;
 d:=0;
 e:=0;
 for i:=1 to c do
  d:=d+a[i];
 for i:=1 to b do
  e:=e+a[i];
 e:=e-d;
 d:=d-e;
 write(h,d);
 close(f);
 close(h);
END.