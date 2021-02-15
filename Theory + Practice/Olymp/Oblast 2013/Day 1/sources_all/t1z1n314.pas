var a:array [1..2001] of word;
    i,j,k,t,n,x:word;
    c,c1:char;

procedure qs(l,r:word);
var i,j,x,t:word;
begin
randomize;
i:=l; j:=r; x:=a[l+random(l+r-1)];
repeat
if i<j then begin
while a[i]>x do inc(i);
while a[j]<x do dec(j);
t:=a[i];
a[i]:=a[j];
a[j]:=t;
inc(i);
dec(j);
end;
until i>=j;
if i<r then qs(i,r);
if l<j then qs(l,j);
end;

begin
assign(input,'input.txt');
reset(input);
read(n,t);
readln;
for i:=1 to n*2 do begin
read(c,c1);
if c<>'0' then a[i]:=(10+ord(c1)-48)*3600-28800
else a[i]:=(ord(c1)-48)*3600-28800;
read(c);
read(c,c1);
if c<>'0' then a[i]:=a[i]+(10*(ord(c)-48)+ord(c1)-48)*60
else a[i]:=a[i]+(ord(c1)-48)*60;
read(c);
read(c,c1);
if c<>'0' then a[i]:=a[i]+10*(ord(c)-48)+ord(c1)-48
else a[i]:=a[i]+ord(c1)-48;
readln;
end;
close(input);
qs(1,n*2);
//for i:=1 to n*2 do write(a[i],' ');
i:=2*n;
assign(output,'output.txt');
rewrite(output);
while i>=2 do begin
if (a[i]+28800) div 3600>9 then
write((a[i]+28800) div 3600,':')
else write('0',(a[i]+28800) div 3600,':');
a[i]:=(a[i]+28800) mod 3600;
if a[i] div 60>9 then write(a[i] div 60,':')
else write('0',a[i] div 60,':');
a[i]:=a[i] mod 60;
if a[i]>9 then write(a[i],'-')
else write('0',a[i],'-');
if (a[i-1]+28800) div 3600>9 then
write((a[i-1]+28800) div 3600,':')
else write('0',(a[i-1]+28800) div 3600,':');
a[i-1]:=(a[i-1]+28800) mod 3600;
if a[i-1] div 60>9 then write(a[i-1] div 60,':')
else write('0',a[i-1] div 60,':');
a[i-1]:=a[i-1] mod 60;
if a[i-1]>9 then write(a[i-1])
else write('0',a[i-1]);
writeln;
dec(i,2);
end;
close(output);
end.
