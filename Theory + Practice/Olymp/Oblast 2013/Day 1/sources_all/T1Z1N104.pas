var s:string;
    a:array[1..10000] of longint;
    n,y,t,i,k,l,m,q,cod,c,ch,sec,min,jj:longint;
    f,v:text;
procedure out_pr;
begin
if ch<10 then write (v,'0',ch,':')
         else write (v,ch,':');
if min <10 then write (v,'0',min,':')
           else write (v,min,':');
if sec<10 then write (v,'0',sec)
         else write(v,sec);
end;

procedure qSort(low,high:longint);
var w,m,i,j:longint;
begin
i:=low;
j:=high;
m:=a[(i+j) div 2];
repeat
while a[i]<m do
inc(i);
while a[j]>m do
dec(j);

if i<=j then begin
             w:=a[i];
             a[i]:=a[j];
             a[j]:=w;
             inc(i);
             dec(j);
             end;
until i>j;

if j>low then qSort(low,j);
if i<high then qSort(i,high);
end;
    
procedure perevod(x:longint);
var j:longint;
begin

ch:=x div 3600;
min:=x mod 3600;
min:=min div 60;
sec:=(x mod 3600)-(min*60);

out_pr;
end;

begin
assign(f,'input.txt');
reset(f);
assign(v,'output.txt');
rewrite(v);

readln(f,n,t);
y:=1;
for i:=1 to 2*n do
begin
readln(f,s);
val (s[1],ch,cod);
ch:=ch*10;
val (s[2],q,cod);
ch:=ch+q;
sec:=ch*3600;
val (s[4],q,cod);
q:=q*10;
val(s[5],c,cod);
q:=q+c;
sec:=sec+(q*60);
val(s[7],q,cod);
q:=q*10;
val(s[8],c,cod);
q:=q+c;
sec:=sec+q;
a[y]:=sec;
inc(y);
end;

qSort(1,2*n);

for i:=1 to n*2 do
begin
jj:=1;
a[i]:=a[i]-t;
for jj:=1 to n*2 do
begin
if (a[i]=a[jj]) and (i<>jj) and (a[i]>0) and (a[jj]>0)then begin
a[i]:=a[i]+t;
perevod(a[jj]);
write(v,'-');
perevod(a[i]);
writeln(v);
a[i]:=-1;
a[jj]:=-1;
end
else inc(jj);
end;
if (a[i]>0) and (a[jj]>0)then a[i]:=a[i]+t;
end;

close(f);
close(v);
end.