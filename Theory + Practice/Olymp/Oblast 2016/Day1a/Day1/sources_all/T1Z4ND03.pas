//Savostin Anton Dmitryevich Marjina Gorka 9 klass N4
program t1z4nd03;
type mas=array[1..2000,1..2000] of integer;
var f1,f2:text;
var a:mas;
n,k,i,j:integer;
/////////////////////////////////////////////////////////
function sk(a:mas;k,n:integer):integer;
var i,min,q:integer;
begin
min:=2001;
for i:=1 to k do
 for q:=1 to k do
  if a[n,i]=a[n-1,q] then 
   if abs(i-q)>k div 2 then begin
    if abs(i-q) div 2<min 
     then min:=abs(i-q) div 2;end
     else if abs(i-q)<min 
     then min:=abs(i-q);
     if min=2001 then min:=-1;
if n>2 then sk:=min+sk(a,k,n-1)
 else sk:=min;     
end;
///if min>k div 2 then min:=min-k div 2;

begin

assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);


read(f1,n,k);

for i:=1 to n do
 begin
 for j:=1 to k do
  read(f1,a[i,j]);
 readln(f1);
end;

writeln(f2,sk(a,k,n));

close(f1);
close(f2);
end.