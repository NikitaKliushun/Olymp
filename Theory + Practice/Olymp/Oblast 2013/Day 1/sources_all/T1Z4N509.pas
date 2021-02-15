{Кальман Владислав Анатольевич, Жодино,10,4}
program task4;
var n,m,k:integer;
    a,c:array [1..200000] of integer;
    f:integer;
    i:integer;
    KOL:integer;
    z:integer;
    t1,t2:text;


procedure find(ST:integer);
var j,f1:integer;
begin
for j:=1 to n do begin
                 if c[j]=f then f1:=j;
                 end;
if ST>f1 then begin
              ST:=ST-f1;
              if k>=ST then KOL:=KOL+1;
              end
         else begin
              f1:=f1-ST;
              if k>=f1 then KOL:=KOL+1;
              end;
end;



begin
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,n,m,k);
readln(t1);
for i:=1 to m do begin
                 read(t1,a[i]);
                 end;
readln(t1);
for i:=1 to n do begin
                 read(t1,c[i]);
                 end;
readln(t1);
read(t1,f);
for i:=1 to m do begin
                 for z:=1 to n do begin
                                  if a[i]=c[z] then find(z);
                                  end;
                 end;
write(t2,KOL);
close(t1);
close(t2);
end.


