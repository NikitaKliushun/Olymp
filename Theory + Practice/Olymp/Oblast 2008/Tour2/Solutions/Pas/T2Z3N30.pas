{Михайловский Михаил Николаевич
Минский государственный областной лицей}
program T2Z3N30;
var a:array[1..8,1..8] of word;
    x:array[1..100] of longint;
    y:array[1..100] of longint;
    n,m,xn,yn,res,k:longint;
    i,j:longint;
    z:boolean;
procedure QSort(l,r:longint);
var b,c,v,t:longint;
begin
  b:=l;c:=r;v:=(l+r) div 2;
  repeat
    while x[b]<v do
      inc(b);
    while x[c]>v do
      dec(c);
    if b<=c then begin
                  t:=x[b];
                  x[b]:=x[c];
                  x[c]:=t;
                  t:=y[b];
                  y[b]:=y[c];
                  y[c]:=t;
                  inc(b);
                  dec(c);
                end;
  until b>c;
  if b<r then QSort(b,r);
  if l<c then QSort(l,c);
end;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(n,m);
  for i:=1 to m do
    read(x[i],y[i]);
  fillchar(a,sizeof(a),0);
  for i:=1 to m do
    begin
      a[x[i],y[i]]:=a[x[i],y[i]]+1;
      a[y[i],x[i]]:=a[y[i],x[i]]+1;
    end;
  QSort(1,m);


  for i:=1 to m do
    begin
      z:=true;
      yn:=y[y[i]];
      xn:=x[i];
      k:=2;
      while z=true do
        begin
          if x[yn]=0 then z:=false
                     else
          if y[x[yn]]<>x[i] then
          if a[xn,yn]=0 then begin
                                 a[xn,yn]:=k;
                                  a[yn,xn]:=k;
                                  yn:=y[yn];
                                  k:=k+1;
                                end else break;

        end;







    end;









  res:=0;
  for i:=1 to m do
    for j:=1 to m do
      if a[i,j]>0 then res:=res+a[i,j]-1;
  writeln(res);
  close(input);
  close(output);
end.
