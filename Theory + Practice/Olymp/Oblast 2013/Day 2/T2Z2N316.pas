program t2z2;
var v,p,t,n,i,j,bol, k:longint;
a:array[1..100000] of longint;
b:array[1..100000] of longint;
  min:longint;


{ procedure Qsort(l,r:integer);
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
  if i<r then Qsort(i,r);
  if j>l then Qsort(j,l);
  end; }



begin

assign(input,'input.txt');
reset(input);
readln(n,k);
for i:=1 to n do read(a[i]);

close(input);
bol:=0;
         for i:=1 to n do begin
        inc(bol);
   {Nado v massiv b vpisat' massiv a sohranyaya massiv a}
 { for i:=1 to n do

  for j:=1 to n do  begin
    p:=a[i];
    a[i]:=b[j] ;
    b[j]:=p ;
               }




{poisk min}
     end;
  min:=abs(a[1]-a[2]);
for i:=1 to n do


  if abs(a[i]-a[i+1])<min then
  begin
 min:=abs(a[i]-a[i+1]);

                     end;
  {for v:=1 to n do
    fillchar(b,sizeof(b),0);

                  v:=1;

for j:=1 to n do    begin
inc(v);
  b[v]:=a[j];
             }
 { for j:=1 to n do Qsort(j,n);}


{Sort}

     {
    for i:=1 to n-1 do
    for j:=i+1 to  n do
    if a[i]>a[j] then begin
    t:=a[i];
    a[i]:=a[j];
    a[j]:=t;
    end;}


assign(output,'output.txt');
rewrite(output);

if n=k then begin
writeln(bol);
     for i:=1 to n do


write(i,' ');
end else
if k=n-1 then begin
writeln(bol-1);
for i:=1 to n-1 do write(i,' ');
end
else
if k=n-2 then begin
writeln(bol-2);
for i:=1 to n-2 do write(i,' ');
end;

close(output);


end.
