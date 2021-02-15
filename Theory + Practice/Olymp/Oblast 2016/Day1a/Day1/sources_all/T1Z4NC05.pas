//Poplyovka Anon Vladimirovich logojsk z4 krugi
Program Z4;
var   f1,f2:text;
      n,j,k,e,i:integer;
      x:array[1..2000] of integer;
      A:array [1..2000,1..2000] of integer;
Begin
   Assign (f1,'input.txt');
   Reset (f1);
   Assign (f2,'output.txt');
   Rewrite (f2);
   Read (f1,n);
   Read (f1,k);
   for i:=1 to n do
      for j:=1 to k do
      Read (f1,A[i,j]);
      
   e:=-1;
   for j:=1 to k do
   begin
   for i:=1 to n do
   X[i]:=A[i,j];
   for i:=1 to n-1 do
   if X[i]=x[i+1] then e:=0;
   for i:=1 to n-1 do 
   end;
   Write (f2,e);
   
   
   { for i:=1 to n do
      for j:=1 to k do
      Write (f2,A[i,j],' ');
   }Close (f1);
   Close (f2);
End.