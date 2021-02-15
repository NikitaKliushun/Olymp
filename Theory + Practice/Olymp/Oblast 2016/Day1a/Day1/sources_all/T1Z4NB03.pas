var a:array[1..2000,1..2000]of longint;
    n,k,i,j,minz:longint;
    f:text;

function min(a,b:longint):longint;
begin
if a<b then min:=a
       else min:=b;
end;


function max(a,b:longint):longint;
begin
if a>b then max:=a
       else max:=b;
end;

begin
assign(f,'input.txt');
reset(f);
readln(f,n,k);
for i:=1 to n do
 begin
  for j:=1 to k do
   read(f,a[i,j]);
  readln(f);
 end;
close(f);
assign(f,'output.txt');
rewrite(f); 
if (n=1) or (n=2) then
                   begin
                    minz:=101;
                    for i:=1 to k do
                     for j:=1 to k do
                      if a[1,i]=a[2,j] then if min(abs(j-i),abs(min(i,j)+k-max(i,j)))<minz then minz:=min(abs(j-i),abs(min(i,j)+k-max(i,j))); 
                   end;
if (n>2) or (minz=101) then writeln(f,-1)
                       else writeln(f,minz);
close(f);
end.