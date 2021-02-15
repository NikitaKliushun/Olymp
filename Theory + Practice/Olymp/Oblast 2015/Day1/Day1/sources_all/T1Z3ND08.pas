//Колпак Илья Сергеевич, г. Дзержинск, 11"А", задача №3
program z_3;
var k,t:array[1..1000] of longint;
    a,x,a1,b,b1,i,n,m,p,j:longint;
    s,s1,sb,sa:string;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n,m);
for i:=1 to n do
  read(f1,k[i]);
for i:=1 to m do
  read(f1,t[i]);
s:='';
a:=0;
for i:=1 to n do
  begin
    if i mod 2 <> 0 then for j:=1 to k[i] do
                            a:=10*a+1;
    str(a,s1);
    if i mod 2 = 0 then  for j:=1 to k[i] do
                            s:=s+'0';
    sa:=s1+s;
  end;
val(sa,a);
s:='';
s1:='';
for i:=1 to m do
  begin
    if i mod 2 <> 0 then for j:=1 to t[i] do
                            b:=10*b+1;
    str(b,s1);
    if i mod 2 = 0 then  for j:=1 to t[i] do
                            s:=s+'0';
    sb:=s1+s;
  end;
val(sb,b);
if a> b then x:=a - b
        else x:=b-a;
str(x,s);
a:=0;
b:=0;
   for i:=1 to length(s) do begin
   if s[i]='1' then
    a:=a+1;
   if s[i]='0' then b:=b+1;
   end;
   write(f2,a,' ',b);
close(f1);
close(f2);
end.
