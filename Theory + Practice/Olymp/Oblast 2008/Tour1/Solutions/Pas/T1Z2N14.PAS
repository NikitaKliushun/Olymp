{Popzov Alexei BORISOV}

program sladkoeshka;
var
n,s1,s2,k,kol,i:longint;
a:array[1..50]of longint;
f,f1:text;
procedure form(s:string);
var
j,i:integer;
begin
if length(s)>n then exit;
if length(s)=n then begin
s1:=0;
s2:=0;
for i:=1 to length(s) do begin
if s[i]='1' then s1:=s1+a[i];
if s[i]='0' then s2:=s2+a[i];
end;
if (s1>=k)and(s2>=k) then kol:=kol+1;
exit;
end;
for j:=0 to 1 do
if j=0 then form(s+'0')
else form(s+'1');
end;
begin
assign(f,'input.txt');
assign(f1,'output.txt');
reset(f);
readln(f,n,k);
for i:=1 to n do
read(f,a[i]);
close(f);
form('');
rewrite(f1);
writeln(f1,kol);
close(f1);
end.
