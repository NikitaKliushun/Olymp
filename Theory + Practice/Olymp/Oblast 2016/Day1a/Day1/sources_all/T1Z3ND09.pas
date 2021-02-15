{Vlad Gakut Andreevich, gorod Vileyka, 10 A klass, Z3}
var a:array[1..10000] of longint;
    i,j,k,k1,n:longint;
    f1,f2:text;
begin
 assign(f1,'input.txt');
 reset(f1);
 read(f1,n);
 k:=0;
 k1:=0;
 for i:=1 to n do
  read(f1,a[i]);
 close(f1);
 for i:=1 to n-1 do begin
  k:=0;
  k1:=0;
  if a[i]>a[i+1] then begin
        for j:=1 to n do begin
          if a[j]=a[i] then
           inc(k);
          if a[j]=a[i+1] then
           inc(k1);
           end;
     if k<k1 then begin
    for j:=1 to n do begin
     if a[i]=a[j] then a[j]:=0
     end;
     end;
     if k>=k1 then begin
      for j:=1 to n do
      if a[i+1]=a[j] then a[j]:=0;
         end;
         end;
    end;
 assign(f2,'output.txt');
 rewrite(f2);
for i:=1 to n do
 if a[i]<>0 then
 write(f2,a[i], ' ');
close(f2);
end.
