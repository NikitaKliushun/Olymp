//Poplyovka Anton Vladimirovich Logojsk z1 Den Svatogo Bajta
Program Z1;
Var   f1,f2:text;
      M,W:int64;
      D:array[1..10000] of int64;
      s,b,k,t,j,i:integer;
      f:array[1..70000] of int64;
      summ,nedel,i1,den:int64;
      A:array [1..10000,1..10000] of integer;

Begin
   Assign (f1,'input.txt');
   Reset (f1);
   Assign (f2,'output.txt');
   Rewrite (f2);
   Read(f1,M);
   Read(f1,W);
   Readln (f1);
   for i:=1 to M do
   Read(f1,D[i]);
   Read (f1, s);
   Read (f1,b);
   Read (f1,t);


   summ:=0;
   for i:=1 to M do
   Summ:=Summ+D[i];
     nedel:=summ div W +3;

   j:=1;
   for i:=s to W do
   begin
   A[1,i]:=j;
   inc(j);
   end;
  i1:=1;
  for i:=1 to M do
  for j:=1 to D[i] do
  begin
   F[i1]:=j;
   inc(i1);
  end;
   i1:=1;

   for j:=s to w do
   begin
   A[1,j]:=F[i1];
   inc(i1);
   end;



   for i:=2 to nedel do
   for j:=1 to w do
   begin
   A[i,j]:=F[i1];
   inc(i1);
   end;

   k:=0;
   for i:=1 to nedel do
   for j:=1 to w do
      if (A[i,j]=t) and (j=b) then k:=k+1;

   Write (f2,k);





   Close (f1);
   Close (f2);
End.
