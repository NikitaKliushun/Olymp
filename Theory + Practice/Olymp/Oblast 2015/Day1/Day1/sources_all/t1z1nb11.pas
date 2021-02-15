program t1z1nb11;
 var n,k,i,j,max,min:integer;
     a,b,d:array[1..100000]of byte;
     f:text;
Begin
 assign(f,'input.txt');reset(f);
 read(f,n,k);
 For i:=1 to n do
  begin
   read(f,a[i]);
   if a[i]>max
    then max:=a[i];
  end;
 close(f);
 assign(f,'output.txt');rewrite(f);
 for i:=1 to n do
  inc(b[a[i]]);
 for i:=1 to max do
  d[i]:=b[i] div k;
 for i:=1 to max do
  for j:=1 to d[i] do
   write(f,i,' ');
 if d[1]=0
  then writeln(f,0);
 close(f);
End.