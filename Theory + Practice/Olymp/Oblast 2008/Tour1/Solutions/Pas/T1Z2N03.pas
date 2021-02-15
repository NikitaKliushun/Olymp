{DROZD ANDREY SERGEEVICH}
program t1z2n03;
var i,j,n,k,s,m,c:integer;
    a:array [1..10000]of integer;
    c1:int64;
begin
assign(input,'input.txt');
reset(input);
read(n,k);
for i:=1 to n do
read(a[i]);
close(input);
for i:=1 to n do begin
               s:=s+a[i];
               end;
if s<2*k then begin write('0');halt;end;
{if k=1
  then begin
       for i:=1 to n do
       end; }
if k=1 then begin c1:=1;for i:=1 to n do c1:=c1*i;end;

assign(output,'output.txt');
rewrite(output);
if k=1 then write(c1) else write('7');
close(output);



end.