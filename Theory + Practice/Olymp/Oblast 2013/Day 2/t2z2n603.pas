{T2Z2N603}
program z;
 var t:text;
 n,k,a,b,c,m,min,f,n1:longint;
 mat:array[1..2,1..100001]of longint;
 mas:array[1..100001]of longint;

{ procedure qsort(l,r:longint);
  var i,j,t,x:longint;
 begin
  i:=l;
  j:=r;
  x:=mat[1,(l+r)div 2];
  repeat
   while mat[1,i]<x do
    i:=i+1;
   while mat[1,j]>x do
    j:=j-1;
   if i<j
    then begin
         t:=mat[1,i];
         mat[1,i]:=mat[1,j];
         mat[1,j]:=t;

         t:=mat[2,i];
         mat[2,i]:=mat[2,j];
         mat[2,j]:=t;
         end;
         i:=i+1;
         j:=j-1;
  until i>j;
  if i<r
   then qsort(i,r);
  if l<j
   then qsort(l,j);
 end;}
begin
 assign(t,'input.txt');
 reset(t);
 read(t,n,k);
 readln(t);
 for a:=1 to n do
  begin
  read(t,mat[1,a]);
  mat[2,a]:=a;
  end;
 close(t);

 {qsort(1,n);}

 for a:=1 to n-1 do
  begin
  min:=mat[1,a];
  f:=a;
  for b:=a to n do
   if mat[1,b]<min
    then begin
         min:=mat[1,b];
         f:=b;
         end;
  mat[1,f]:=mat[1,a];
  mat[1,a]:=min;

  min:=mat[2,f];
  mat[2,f]:=mat[2,a];
  mat[2,a]:=min;
 end;

 a:=1;
 f:=a+k-1;
 c:=1;
 min:=mat[1,f]-mat[1,a];
 while f<=n do
  begin
  m:=mat[1,f]-mat[1,a];
  if m<min
   then begin
        min:=m;
        c:=a;
        end;
  a:=a+1;
  f:=a+k-1;
 end;
 b:=0;
 m:=0;
 a:=c;
 f:=a+k-1;
 while m=0 do
  begin
  b:=b+1;
  mas[b]:=mat[2,a];
  if (a>=f)and(mat[1,a+1]<>mat[1,a])
   then m:=1;
  a:=a+1;
  end;

 assign(t,'output.txt');
 rewrite(t);
 writeln(t,b);
 for a:=1 to b do
  write(t,mas[a],' ');
 close(t);
end.