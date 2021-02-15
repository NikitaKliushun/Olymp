{Шкет Никита Николаевич, г.Молодечно, 10 класс, 1 задача}
program T1Z1N613;
var a,q:array [1..2001] of longint;
    w:array [1..2001] of byte;
    n,y,i,j,e:integer;
    t,f:longint;
    s:string;

{  procedure QSort(l,r:longint);
  var d,j,x,v:longint;
  begin
  d:=l;
  j:=r;
  x:=(l+random(r-l+1));
  while a[d]<x do
   d:=d+1;
  while a[j]>x do
   j:=j-1;
  if d<>j then begin
   v:=a[d];
   a[d]:=a[j];
   a[j]:=v;
   d:=d+1;
   j:=j-1;
               end;
  if l<j then QSort(l,j);
  if d<r then QSort(d,r);
  end;}

  procedure time(s:string);
  var j:longint;
      z:integer;
      c:string;
  begin
  f:=0;
  c:=copy(s,1,2);
  val(c,j,z);
  f:=f+(j*3600);
  c:=copy(s,4,2);
  val(c,j,z);
  f:=f+(j*60);
  c:=copy(s,7,2);
  val(c,j,z);
  f:=f+j;
  end;


  procedure times(f:longint);
  var j:longint;
      c:string;
  begin
  s:='';
  j:=f div 3600;
  if j<10 then s:=s+'0';
  str(j,c);
  s:=s+c; s:=s+':';
  j:=f mod 3600; j:=j div 60;
  if j<10 then s:=s+'0';
  str(j,c);
  s:=s+c; s:=s+':';
  j:=f mod 3600; j:=j mod 60;
  if j<10 then s:=s+'0';
  str(j,c);
  s:=s+c;
  write(s);
  end;

begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

  read(n); readln(t);
  y:=1;
  for i:=1 to (2*n) do begin
   read(s);
   readln;
   time(s);
   a[i]:=f;
                       end;

 { QSort(1,2*n);}
  for i:=1 to 2*n do
   for j:=1 to 2*n do
    if a[j]>a[i] then begin
     f:=a[i];
     a[i]:=a[j];
     a[j]:=f;
                      end;
  f:=a[1];
  y:=1;


  for i:=1 to n*2 do w[i]:=0;

  for i:=1 to 2*n do begin
   if w[i]=0 then begin f:=a[i]; w[i]:=1; end else f:=0;
   for e:=1 to 2*n do
    if (w[e]=0) and (f<>0) then
     if a[e]=f+t then begin
      q[y]:=f;
      y:=y+1;
      q[y]:=a[e];
      y:=y+1;
      f:=0;
      w[e]:=1;
                      end;
                     end;
  for i:=1 to n*2 do begin
   if i mod 2=1 then begin
   times(q[i]);
   write('-');       end else begin
   times(q[i]);
   writeln;          end;
                     end;


close(input);
close(output);
end.