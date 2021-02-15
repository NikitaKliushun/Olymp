program z1;
var s:array[1..10] of string;
o:char;
ss,m,mm:string;
f1,f2:text;
n,t,kol,i,j,u,i1:byte;
h,x:integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
for I:=1 to 10 do begin
readln(f1, s[i]);

for j:=1 to 10 do begin
ss:=s[i];
if ss[j]='#' then kol:=kol+1;
end;
end;
readln(f1,n);

for I:=1 to n do begin
if u=1 then break;
readln(f1,m);

if length(m)=3 then  begin mm:=m[1];val(mm,t,x) ; o:=m[3]; end;
if length(m)=4 then begin o:=m[4]; Mm:=m[1]+m[2] ;val(mm,t,x); end;

h:=0;
if o='a' then  h:=1;
if o='b' then  h:=2;
if o='c'then  h:=3;
if o='d' then  h:=4;
if o='e' then  h:=5;
if o='f' then  h:=6;
if o='g' then  h:=7;
if o='h' then  h:=8;
if o='i' then h:=9;
if o='k' then  h:=10;

ss:=s[t];
if (ss[h]='.') or (ss[h]='+')  then writeln (f2,'MISS');
if (ss[h]='#') and (kol = 1)  then  writeln (f2,'GAME OVER');
if (ss[h]='#') and (kol = 1)  then  u:=1;






if U=1 then break;
if ss[h]='#' then begin writeln(f2,'HIT');

kol:=kol-1;

end;
if ss[h]='#' then begin ss[h]:='+'; s[t]:=ss;






end;
end;
for I1:=1 to 10 do writeln(s[i1]);
close(f2);
close(f1);
end.