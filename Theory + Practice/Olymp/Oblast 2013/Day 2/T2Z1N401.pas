{Монич Денис Николаевич, г. Борисов, 11 "А", задача №1}
program t2z1n401;
var a,p:array[1..1000] of integer;
    n,k,kol,os,i,j:integer;
    f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,n);
readln(f1,k);


kol:=0;
For i:=1 to n do
  begin
    read(f1,a[i]);
    kol:=kol+a[i];
    readln(f1,p[i]);
  end;
os:=k-kol;
writeln(f2,abs(os));
j:=1;

if os<0 then
  while os<>0 do
    begin
      if a[j]>0 then
        begin
          a[j]:=a[j]-1;
          writeln(f2,'-',j);
          os:=os+1;
        end;

      j:=j+1;
      if j>n then j:=1;
    end;

j:=1;
if os>0 then
  while os<>0 do
    begin
      if a[j]<p[j] then
        begin
          a[j]:=a[j]+1;
          writeln(f2,j);
          os:=os-1;
        end;


      j:=j+1;
      if j>n then j:=1;
    end;


close(f1);
close(f2);
end.
