//Poplyovka Anton Vladimirovich Logojsk z2 ceremonia nagrazdenia
Program Z2;
Var   f1,f2:text;
      m,n,z,j,i,flag,flag1:integer;//longint
      H,B,F:array[1..3000] of integer;//int64
     
      

Begin
    Assign (f1,'input.txt');
   Reset (f1);
   Assign (f2,'output.txt');
   Rewrite (f2);
   Read (f1,m);
   Read (f1,n);
   for i:=1 to m do
   Read (f1,H[i]);
   
   for i:=1 to n do
   Read (f1,B[i]);
   for i:=1 to n do
   F[i]:=B[i];
   
   for i:=1 to n do
   for j:=2 to n do
   if B[i]<B[j] then
   begin
   z:=B[i];
   B[i]:=B[j];
   B[j]:=z;
   end;
  flag:=0;
  flag1:=0;
   H[1]:=B[2];
   H[2]:=B[1];
   for i:=1 to n do 
   begin
   if (F[i]=H[1]) and (flag=0) then begin H[1]:=i; flag:=1;      end;
   if (F[i]=H[2]) and (flag1=0)then begin H[2]:=i; flag1:=1; end;
   end;
   for i:=1 to 2 do
   Write (f2,H[i],' ');
   
   

   
   Close (f1);
   Close (f2);
 
End.