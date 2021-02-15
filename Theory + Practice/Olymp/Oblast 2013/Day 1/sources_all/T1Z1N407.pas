{Belchikov Anatoliy sergeevich,minskiy rayon,11,N2}
var
a:array[1..2000] of longint;
n,i,j:integer;
t:longint;
s:string;
f1,f2:text;
function separ(s:string):longint;
var
i:integer;
sep:longint;
begin
separ:=((ord(s[1])-ord('0'))*10+(ord(s[2])-ord('0')))*3600+((ord(s[4])-ord('0'))*10+(ord(s[5])-ord('0')))*60+(ord(s[7])-ord('0'))*10+(ord(s[8])-ord('0'));

end;

function hh(t:longint):string;
var t1:integer;
begin
t1:=t div 3600;
hh:=chr((t1 div 10)+ord('0'))+chr((t1 mod 10)+ord('0'))+':';
end;

function mm(t:longint):string;
var t1:integer;
begin
t1:=t mod 3600 div 60;
mm:=chr((t1 div 10)+ord('0'))+chr((t1 mod 10)+ord('0'))+':';
end;

function ss(t:longint):string;
var t1:integer;
begin
t1:=t mod 60;
ss:=chr((t1 div 10)+ord('0'))+chr((t1 mod 10)+ord('0'));
end;

begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');

rewrite(f2);
readln(f1,n,t);
for i:=1 to n*2 do begin
readln(f1,s);
a[i]:=separ(s);
end;

i:=1;

while i<n*2 do begin
for j:=1 to n*2 do
if abs(a[j]-a[i])=t then begin
if a[i]>a[j] then
writeln(f2,hh(a[j]),mm(a[j]),ss(a[j]),'-',hh(a[i]),mm(a[i]),ss(a[i]))
else writeln(f2,hh(a[i]),mm(a[i]),ss(a[i]),'-',hh(a[j]),mm(a[j]),ss(a[j]));
a[i]:=-1;
a[j]:=-1;
break;
end;

while a[i]=-1 do i:=i+1;

end;
close(f1);
close(f2);
end.
