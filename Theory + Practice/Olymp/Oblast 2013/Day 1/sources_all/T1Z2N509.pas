{Кальман Владислав Анатольевич, Жодино,10,2}
program task2;
var b:integer;
    a,c:longint;
    t1,t2:text;


procedure find(var KOL:integer);
var i:integer;
begin
i:=a;
KOL:=0;
while i<=c do begin
              if c mod i=0 then KOL:=KOL+1;
              i:=i+1;
              end;
end;


begin
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,a,c);
if a=c then b:=1
       else find(b);

if b>1 then write(t2,b-1);
if b=1 then write(t2,b);
close(t1);
close(t2);
end.

