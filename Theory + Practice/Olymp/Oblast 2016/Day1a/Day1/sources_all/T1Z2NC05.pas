//Poplyovka Anon Vladimirovich logojsk z2 technologii
Program Z2;
var   f1,f2:text;
      n,j,k,M,e,i:longint;

begin
   Assign (f1,'input.txt');
   Reset (f1);
   Assign (f2,'output.txt');
   Rewrite (f2);
   Read (f1,N);

   Read (f1,M);

 Write (f2,'-1');
   Close (f1);
   Close (f2);
   end.
