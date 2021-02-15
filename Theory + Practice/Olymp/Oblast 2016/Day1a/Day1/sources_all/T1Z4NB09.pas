{Гончар Даниил Дмитриевич СШ№2 г.Солигорска}

program T1Z4NB09;
label 1,2;
var a,b:array[1..2000] of longint;
    n,k,i,j,r,min,s:longint;
    f1,f2:text;
begin
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 readln(f1,n,k);

 min:=k;
 r:=k;


  for i:=1 to k do read(f1,a[i]);
1:  for j:=1 to k do read(f1,b[j]);


  j:=1;
  for i:=1 to k do
   begin
    while j<=k do
     begin
      if a[i]=b[j] then r:=abs(j-i);
      j:=j+1;
      if r<min then min:=r;
     end;
    j:=1;
   end;
 if r=min then begin write(f2,-1);goto 2;end;
 s:=s+min;
 min:=k;
 while not(eof(f1)) do begin goto 1;


 end;


 write(f2,s);
2: close(f2);
 close(f1);
end.
