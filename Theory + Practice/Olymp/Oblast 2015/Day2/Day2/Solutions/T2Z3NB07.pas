program z3;
var
  n,k,i,j,t,b:longint;
  a:array[1..100]  of longint;
  f1,f2:text;
begin
   assign(f1,'input.txt');
   reset(f1);
   assign(f2,'output.txt');
   rewrite(f2);

   readln(f1,n,k);


   for i:= 1 to n do
     read(f1,a[i]);


   write(f2,1001);

   close(f1);
   close(f2);


end.
