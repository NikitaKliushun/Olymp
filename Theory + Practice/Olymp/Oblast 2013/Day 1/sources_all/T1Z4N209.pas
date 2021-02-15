//Филипович Антон Федорович, МГОЛ, 10 А класс
type mass=array[1..200000] of longint;
var e,n,m,k,i,f:longint;
    c,a,p:array[1..200000] of longint;
procedure go(x:longint);
  var i:longint;
  begin
    i:=x;
    while i<>f do
      if p[i]<k
        then begin
               inc(p[i]);
               i:=a[i];
             end
        else exit;

    if i=f then inc(e);
  end;
procedure qsort(l,r:longint);
  var i,j,t,x:longint;
  begin
    i:=l; j:=r; x:=c[l+random(r-l+1)];

    repeat
      while c[i]<x do
        inc(i);

      while c[j]>i do
        dec(j);

      if i<=j then begin
                     t:=c[i];
                     c[i]:=c[j];
                     c[j]:=t;
                     inc(i);
                     dec(j);
                   end;

    until i>j;

    if l<j then qsort(l,j);
    if i<r then qsort(i,r);
  end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);


  read(n,m,k);

  for i:=1 to m do
    read(c[i]);

  for i:=1 to n do
    read(a[i]);

  read(f);

  qsort(1,m);

  e:=0;

  for i:=1 to m do
    go(c[i]);

  write(e);

  close(input);
  close(output);
end.
