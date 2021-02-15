{Величко Владислав Константинович, ГУО СШ№3 г. Солигорска, 10Б класс T2Z4N210}
program z4;
var  a:array[1..2013,1..2013] of char;
     b:array[1..10010] of longint;
     i,ii,j,jj,n,m,k,l:longint;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,m,k);
for i:=1 to 2*n+1 do
  for j:=1 to 2*m+1 do
    a[i,j]:=' ';
for i:=1 to k do
read(b[i]);
for i:=1 to n*2+1 do
  for j:=1 to m*2+1 do
    begin
    if (i=1) or (i=2*n+1) or (j=1) or (j=2*m+1) then a[i,j]:='#';
    if (i mod 2=1) and (j mod 2=1) then a[i,j]:='#';
    if (i<=n) and (j<=m) then a[2*i,2*j]:='.';
    end;
ii:=1; jj:=1;
dec(b[1]);
for i:=1 to k do
  begin
  for j:=1 to b[i] do
    begin
    if jj=m then
      begin
      inc(ii);
      jj:=1;
      end
      else inc(jj);
    end;
  a[2*ii,2*jj+1]:='#';
  for l:=1 to jj do a[2*ii+1,2*l]:='#';
  for l:=jj+1 to m do a[2*(ii-1)+1,2*l]:='#';
  end;
for i:=1 to 2*n+1 do
  begin
  for j:=1 to 2*m+1 do write(a[i,j]);
  writeln;
  end;

close(input);
close(output);
END.
