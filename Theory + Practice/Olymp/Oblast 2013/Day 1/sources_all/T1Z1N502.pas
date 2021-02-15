program T1Z1N502;                              {REALLY AMAZING bad code}
const
 maxN=1000;
var
 a:array [1..2000] of string;
 B:array [1..2000, 1..3] of byte;
 n,i,k:integer;
 t:longint;
 temp,j:byte;
 f1,f2:text;
begin
 assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 read(f1,n);
   readln(f1,t);
 for i:=1 to 2*n do readln(f1,a[i]);

for i:=1 to 2*n do begin
 b[i,1]:=((ord((a[i])[1])-48)*10+(ord((a[i])[2])-48));    {IT WORKS!}
 b[i,2]:=((ord((a[i])[4])-48)*10+(ord((a[i])[5])-48));    {REALLY!}
 b[i,3]:=((ord((a[i])[7])-48)*10+(ord((a[i])[8])-48));    {OH MY GOD!}
 end;
{
//sort hours
for i:=1 to 2*n-1 do
 for k:=1 to 2*n-i do
  if b[k,1]>b[k+1,1] then
   for j:=1 to 3 do begin
   temp:=b[k,j]; b[k,j]:=b[k+1,j]; b[k+1,j]:=temp;
   end;
//minutes
for i:=1 to 2*n-1 do
 for k:=1 to 2*n-i do
  if b[k,2]>b[k+1,2] then
   if b[k,1]=b[k+1,1] then
   for j:=1 to 3 do begin
   temp:=b[k,j]; b[k,j]:=b[k+1,j]; b[k+1,j]:=temp;
   end;

//sort seconds
for i:=1 to 2*n-1 do
 for k:=1 to 2*n-i do
  if b[k,3]>b[k+1,3] then
   if b[k,1]=b[k+1,1] then
   if b[k,2]=b[k+1,2] then begin
     temp:=b[k,3]; b[k,j]:=b[k+1,3]; b[k+1,3]:=temp;
   end;


 }
{//to remove!
for i:=1 to n*2 do
 for j:=1 to 3 do
  if j<>3 then write(b[i,j],':') else writeln(b[i,j]);
readln;  }

if n=1 then
begin
 if b[1,1]>b[2,1] then write(f2,b[2,1],':',b[2,2],':',b[2,3],'-',b[1,1],':',b[1,2],':',b[1,3]);
 if b[1,1]<b[2,1] then write(f2,b[1,1],':',b[1,2],':',b[1,3],'-',b[2,1],':',b[2,2],':',b[2,3]);
 if b[1,1]=b[2,1] then
     begin
      if b[1,2]>b[2,2] then write(f2,b[2,1],':',b[2,2],':',b[2,3],'-',b[1,1],':',b[1,2],':',b[1,3]);
      if b[1,2]<b[2,2] then write(f2,b[1,1],':',b[1,2],':',b[1,3],'-',b[2,1],':',b[2,2],':',b[2,3]);
      if b[1,2]=b[2,2] then begin
                     if b[1,3]>b[2,3] then write(f2,b[2,1],':',b[2,2],':',b[2,3],'-',b[1,1],':',b[1,2],':',b[1,3]);
                     if b[1,3]<b[2,3] then write(f2,b[1,1],':',b[1,2],':',b[1,3],'-',b[2,1],':',b[2,2],':',b[2,3]);
end;
end;
end;
close(f1);
close(f2);

end.
