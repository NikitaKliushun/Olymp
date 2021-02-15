{Кальман Владислав Анатольевич, Жодино,10,3}
program task3;
var m,n:integer;
    a:array [1..400,1..400] of char;
    i,j:integer;
    m1,n1:integer;
    KOL:integer;
    t1,t2:text;
    k:integer;


procedure find(X,Y:integer);
var i1,j1,i2,f:integer;
begin
f:=0;
i1:=1;
i2:=x;
while i2>i1 do begin
               j1:=1;
               while j1<=y do begin
                              if a[i1,j1]<>a[i2,j1] then f:=1;
                              j1:=j1+1;
                              end;
               i1:=i1+1;
               i2:=i2-1;
               end;
if f=0 then KOL:=KOL+1;
end;





begin
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,n,m);
readln(t1);
KOL:=0;
for i:=1 to n do begin
                 for j:=1 to m do begin
                                  read(t1,a[i,j]);
                                  end;
                 readln(t1);
                 end;
n1:=2;
while n1<=n do begin
               m1:=1;
               while m1<=m do begin
                              find(n1,m1);
                              m1:=m1+1;
                              end;
               n1:=n1+1;
               end;
write(t2,KOL);
close(t1);
close(t2);
end.
