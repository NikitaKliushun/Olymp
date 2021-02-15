program z1;
var m,n,k,i,j,x,t:longint;
    a,b:array [1..10000] of byte;
    c:array[1..100] of integer;
    f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,n,k);
  for i:=1 to n do
      read(f1,a[i]);

  for i:=1 to n do
      c[a[i]]:=c[a[i]]+1;

  for i:=1 to 100 do
      m:=m+(c[i] div k);

  i:=1; x:=1; t:=0;
  while i<=m do
     begin
       if c[i]>=k then
          for j:=x to ((c[i] div k)+x-1) do
              begin
                b[j]:=i; t:=1;
              end;
       if t=1 then
               x:=c[i] div k+x;
       t:=0;
       inc(i);
     end;

  writeln(f2,m);
{  i:=1; j:=1;
  while i<=m do
     begin
      if b[j]>0 then
         begin
            write(f2,b[i],' ');
            inc(i);
         end;
      inc(j);
     end;}


  for i:=1 to m do
      write(f2,b[i],' ');

  close(f1);
  close(f2);
end.
