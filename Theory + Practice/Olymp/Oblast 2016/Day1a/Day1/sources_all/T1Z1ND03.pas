//Savostin Anton Dmitryevich Marjina Gorka 9 klass N1
program t1z1nd03;

type mas=array[0..11,0..11] of char;

var f1,f2:text;
a:mas;
i,j,n,x,y2:integer;
y:char;

////
function transform(a:char):integer;   ///Rabotaet
var x:integer;
begin
//a=97
if a='k' then x:=-1
 else x:=0;
x:=ord(a)+x;
x:=x-96;
transform:=x;
end;
////
/////////////////
function stillalive(a,b:integer;var m:mas):boolean;
var i,j,c:integer;
p:boolean;
begin
p:=false;
i:=a;
j:=b;

if (m[i-1,j]='#') or (m[i+1,j]='#') or (m[i,j+1]='#') or (m[i,j-1]='#') then p:=true;

while  (i in [1..10]) and (m[i,j]<>'.') do                                             ////////////////////////////////
 i:=i-1;
i:=i+1;
for c:=i to a do
if m[j,i]='#' then p:=true;

if p=true then begin  stillalive:=true;end
 else 
 begin
 i:=a;
  while (i in[1..10]) and (m[j,i]<>'.')   do
   i:=i+1; 
 i:=i-1;
 for c:=i downto a do
if m[j,i]='#' then p:=true;
 end;


if p=true then begin  stillalive:=true; end
else 
 begin
 while  (j in[1..10]) and (m[j,i]<>'.')  do
   j:=i+1; 
 j:=i-1;
 for c:=j downto b do
  if m[j,i]='#' then p:=true;
 end;
if p=true then begin  stillalive:=true;end
else
 begin
 while (j in[1..10]) and (m[j,i]<>'.')  do
   j:=i-1; 
 j:=i+1;
 for c:=j to b do
  if m[j,i]='#' then p:=true;
 end;
if p=true then stillalive:=true
 else stillalive:=false; 
end;
///////////////////
function any(a:mas):boolean;
var p:boolean;
i,j:integer;
begin
p:=false;
for i:=1 to 10 do
 for j:=1 to 10 do
  if a[i,j]='#' then p:=true;
 if p=true then any:=true else any:=false; 
end;
////////////////////////////////////////////////
function hit(a:integer;b:integer;var m:mas):string;
begin  
                   
if m[a,b]='#' then
 begin
  m[a,b]:='*';
  if stillalive(a,b,m)=true then
   hit:='HIT'
   else if any(m)=true then
   hit:='DEAD'
    else hit:='GAME OVER';
 end
 else hit:=('MISS');

end;
//////////////////////////////////////////////////


begin

assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);

for i:=1 to 10 do    //Rabotaet
begin
 for j:=1 to 10 do
  read(f1,a[i,j]);
 readln(f1);
end;

readln(f1,n);
for i:=1 to n do
 begin
 if any(a)=false then break;
 read(f1,x,y);
 read(f1,y);
 readln(f1);
 y2:=transform(y);
 write(f2,hit(x,y2,a));
 writeln(f2);
 end;


close(f1);
close(f2);
end.