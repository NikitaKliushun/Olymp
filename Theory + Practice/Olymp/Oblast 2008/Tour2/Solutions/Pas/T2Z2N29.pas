{процкевич александр г. копыль 2 тур 2 задача}
program sdf;
var
n,k:longint;
i,j,h,l,y,t,u:longint;
a:array [1..1000000] of char;
b:array [1..1000000] of char;
count,logo,logio,m,counter,g,o:longint;
p:boolean;
begin
m:=1;
assign (input,'input.txt');
reset(input);
readln (n,k);
for i:=1 to n do
read(a[i]);
for j:=n+1-k to n do
count:=count+j;
for j:=n downto 1 do
logo:=logo+j;
logio:=logo-count;
g:=k;
o:=1;
u:=n-k;
for i:=1 to u do
begin
o:=1;
t:=n-g;
for y:=1 to t do
 begin
  p:=false;
  m:=1;
  for j:=o to g+o do
  begin
  b[m]:=a[j];
  m:=m+1;
  end;
  counter:=0;
  for h:=1 to g+1 do
  begin
  for l:=1 to g+1 do
  if b[h]=b[l] then counter:=counter+1;
  if counter>k then begin p:=true; break; end else counter:=0;
  end;
  if p=false then count:=count+1;
  o:=o+1;
 end;
g:=g+1;
end;
assign (output,'output.txt');
rewrite(output);
write (count);
close(output);
end.
