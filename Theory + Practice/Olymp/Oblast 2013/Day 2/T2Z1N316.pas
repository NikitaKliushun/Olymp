program t2z2;
var n,k,kol,c,d,g:longint;
b:array[1..1000,1..2] of longint;
a:array[1..1000] of longint;

                     ans,i,j,l,r:longint ;

{vot reshenie}
{realisaziya takova, chto sperva my schityvaem pravyi massiv,
a satem levyi massiv, probegaya po ocheredno po massivam my smotrim rasnizu mezhdu
vtorym chislom i pervym, a zatem po raznize dobovlyaem stol'ko zhe
elementov(kotoryi v pravom massive) skol'ko rasniza. inache, esli rasniza ravna 0, to otvet raven -n)}



  {  procedure Qs(l,r:integer);
      var   x,y,i,j:integer ;
 begin
 i:=l;
 j:=r;
 x:=a[(l+r)div 2];
 repeat
 while i<x do inc(i);
 while j>x do dec(j);
  if a[i]>a[j] then begin
  y:=a[i];
  a[i]:=a[j];
  a[j]:=y;

  inc(i);
  dec(j);
  end;
  until  i>=j;
  if i<r then Qs(i,r);
  if j>l then Qs(j,l);
  end; }
begin

assign(input,'input.txt');
reset(input);
readln(n,k);
readln(c,d);
for i:=1 to n do
for j:=1 to 2 do read(b[i,j]);
close(input);


assign(output,'output.txt');

rewrite(output);
kol:=0;

 if n=1 then begin
 for g:=1 to abs(d-c) do
a[g]:=d;
for g:=1 to abs(d-c)  do
writeln(abs(d-c));
 writeln(a[d-c]-c,' ') end else begin

 writeln('1');
 writeln(-n);
           end;
close(output);

  end.
