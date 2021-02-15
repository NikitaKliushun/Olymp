//Атрохов А.А. Солигорск. 2 школа. 1 тур. 2 задача. Номер участника А16
program zadachka3;
type ares=array[1..100] of byte;
var a,b:array[1..100] of byte;
    n,d,k,o1,o2,i,t:longint;

procedure perli(n:longint; var d:longint);
var  a:array[1..100] of byte;
     i,t,j:integer;
begin
i:=0;
while n>=1 do
begin
t:=n mod 2;
i:=i+1;
a[i]:=t;
n:=n div 2;
end;
for j:=i downto 1 do d:=d*10+a[i];
end;

procedure neperli(n:longint; a:ares; var o:longint);
var i:integer;
begin
o:=1;
for i:=n-1 downto 1 do o:=o*2+a[i];


end;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(k,n);
perli(n,d);
i:=0;
if k=2 then begin
            while d<>0 do
             begin
             i:=i+1;
             t:=d mod 10;
             if t=0 then begin a[i]:=0; b[i]:=1; end
                    else begin a[i]:=1; b[i]:=1; end;
             d:=d div 10;
             end;
            end;
neperli(i,a,o1);
neperli(i,b,o2);
write(o1,' ',o2);
close(output);
close(input);
end.
