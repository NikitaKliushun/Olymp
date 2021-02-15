var n, m, i, j, x, y, xx, yy, kk, jj:longint;
    a:array[0..11000,0..11000] of longint;
    b:array[0..110000] of longint;
 begin
 assign(input, 'input.txt');reset(input);
 assign(output, 'output.txt');rewrite(output);
 readln(n, m);
 for i:=1 to m do
  a[i, 0]:=0;
 for i:=1 to m do
 begin
  read(x, y);
  inc(a[x, 0]); inc(a[y, 0]);
  xx:=a[x, 0]; yy:=a[y, 0];
  a[x, xx]:=y; a[y, yy]:=x;
 end;
{ for i:=1 to n do
  begin
   xx:=a[i, 0];
   write(i, ' ');
   for j:=1 to xx do
   write(a[i, j]);
   writeln;
  end;
  writeln;}
  kk:=0;
 for i:=1 to n do
  begin
  xx:=a[i, 0];
  for j:=1 to n do
   b[j]:=0;
  for j:=1 to xx do
   b[a[i, j]]:=1;
   b[i]:=1;
  for j:=1 to n do
   if b[j]<>0 then
    begin
     yy:=a[j, 0];
     for jj:=1 to yy do
     b[a[j, jj]]:=1;
    end;
  for j:=1 to n do
   begin
   if b[j]=0 then begin
                   kk:=kk+1;
                   inc(a[i, 0]);
                   xx:=a[i, 0];
                   a[i, xx]:=j;
                   inc(a[j, 0]);
                   xx:=a[j, 0];
                   a[j, xx]:=i;
                   yy:=a[j, 0];
                   for jj:=1 to yy do
                   b[a[j, jj]]:=1;
                   end;

   end;
  end;
  writeln(kk);
// if m=0 then writeln(n-1);
 close(input);close(output);
 end.
