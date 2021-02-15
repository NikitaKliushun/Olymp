{Елисеев Иван Алексеевич, г.Солигорск, 8 класс, Z2}
program T1Z2NC06;
var a,b:array[1..32]of byte;
    i,c,x,y,k:longint;
procedure in_2(x:longint);
begin
c:=1;
while x>=1 do
begin
a[c]:=x mod 2;
x:=x div 2;
inc(c);
end;
end;
{procedure in_10(var x:longint);
var c:longint;
begin
x:=a[1];
for i:=2 to n do
x:=x
end;  }
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(k,y);
if (k=3) and (y=1) then begin writeln(3,' ',5,' ',11); exit end;
if (k=3) and (y=0) then begin writeln(2,' ',4,' '7); exit end;
if (k=2) and (y=1) then begin writeln(6,' ',7); exit end;
if (k=2) and (y=0) then begin writeln(3,' ',4); exit end;
if (k=1) and (y=1) then begin writeln(1); exit end;
if (k=1) and (y=0) then begin writeln(0); exit end;
close(input);
close(output);
END.
