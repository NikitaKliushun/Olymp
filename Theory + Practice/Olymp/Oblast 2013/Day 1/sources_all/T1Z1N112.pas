program a1;
var B1:array [1..400] of string;
    B:array [1..400,1..400] of string;
    A:array [1..400,1..400] of char;
    Mas1:array [1..400] of char;
    Mas2:array [1..400] of integer;
    h,j,co,e,r,i,N,M,l,g,t,x,z,y,u,c,p,v:integer;
    d:string;
    begin
    assign(input,'in.txt');
    reset(input);
    assign(output,'out.txt');
    rewrite(output);
read(M,N);
h:=M*2;
l:=0;
for i:=1 to h do
begin
for j:=1 to 8 do
 read(A[i,j]);
 readln;
 end;
 for e:=1 to h do
  for r:=1 to 8 do
  if A[e,r]<>':' then
  begin
  l:=l+1;
  Mas1[l]:=A[e,r];
  end;
  g:=1;
  c:=l mod 6;
  for x:=1 to c  do
  begin
   for z:=1 to 6 do
   begin
   insert(Mas1[g],d,z);
  g:=g+1;
  end;
  val(d,Mas2[x]);
  delete(d,1,6);
  end;
  for i:=1 to x-1 do
  for j:=1 to x-1 do
  begin
  if(Mas2[j]<Mas2[j+1]) then
  p:=Mas2[j+1];
  Mas2[j+1]:=Mas2[j];
  Mas2[j]:=p;
 end;
 for i:=1 to c do
 begin
 write(Mas2[i]);
   for i:=1 to c do
   v:=Mas2[i];
   Mas2[i]:=Mas2[i+1];
   Mas2[i+1]:=v;
   end;
   co:=1;
   for j:=1 to c do
   Mas2[j]:=B1[j];
   close(input);
   close(output);
   end.
