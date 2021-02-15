var f1,f2:text;
    a:array[1..1000,1..1000] of integer;
    n,m,i,j,h,k,g,v,l:longint;
    c:char;
    f:boolean;
Begin
 assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 readln(f1,n,m);
 for i:=1 to n do
  begin
   for j:=1 to m do
    begin
     read(f1,c);
     a[i,j]:=ord(c)-ord('0');
    end;
    readln(f1);
   end;
 for h:=2 to n do
  for g:=1 to m do
   for i:=1 to n+1-h do
    for j:=1 to m+1-g do
     begin
     for l:=j to g+j-1 do
     begin
     v:=1;
     while (v<=h div 2+h mod 2)and(f=false)  do
      if (a[i+v-1,l]=a[h-v+i,l])
       then inc(v)
       else f:=true;
     end;
     if f=false
     then inc(k)
     else f:=false;
     end;
     
 writeln(f2,k);
 close(f1);
 close(f2);
End.