{Шкет Никита Николаевич, г.Молодечно, 10 класс, 4 задача}
program T1Z4N613;
var n,m,k,i,j,z,x,c:longint;
    a,b:array [1..200000] of longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

  read(n,m);
  readln(k);
  for i:=1 to m do read(a[i]);
  readln;
  for i:=1 to n do read(b[i]);
  readln;
  read(z);

  for i:=1 to m do begin
   for j:=1 to n do
    if b[j]=a[i] then begin
       c:=j;
       break;         end;
   j:=c;
   c:=0;
   while b[j]<>z do begin
    if j=n then j:=0;
    j:=j+1;
    c:=c+1;         end;
   if c<=k+1 then x:=x+1;
                   end;
  write(x);

close(input);
close(output);
end.
