Var
 N,K,I,Sum,Z,J,C,Kol:Longint;
 A:Array[1..100] of Integer;
 B:Array[1..100] of Integer;
 T:Array[1..10000] of Integer;
 P:Array[1..100] of Integer;

Begin
 Assign(Input,'Input.txt');
 Reset(Input);
  ReadLn(N,K);
  For I:=1 to N do
  Begin
   ReadLn(A[I],P[I]);
   B[I]:=I;
   Sum:=Sum+A[I];
  End;
 Close(Input);
 Z:=K-Sum;
 For I:=1 to N-1 do
  For J:=1 to N-1 do
   If A[J]<A[J+1] then Begin
                        C:=A[J+1];
                        A[J+1]:=A[J];
                        A[J]:=C;
                        C:=B[J+1];
                        B[J+1]:=B[J];
                        B[J]:=C;
                       End;
 Kol:=0;
  Assign(Output,'Output.txt');
  ReWrite(Output);
  Write(Abs(Z));
 If Z<0 then Begin
               I:=1;
               While Sum>K do
		If Sum-A[I]>=K then Begin
 		                     A[I]:=0;
				     Sum:=Sum-A[I];
				     Inc(Kol);
				     T[Kol]:=-B[I];	
			             Inc(I);
		                    End
		               else Begin
				     A[I]:=A[I]-(Sum-K);
	                             Sum:=K;
				     Inc(Kol);
				     T[Kol]:=-B[I];
				   End	 			
	      End
{                If A[I]->=0 then Begin
                                   Sum:=Sum-1;                                   
                                   A[I]:=A[I]-1;
                                   Inc(Kol);
                                   T[Kol]:=-B[I];
                                  End;      
                Inc(I);
               End;
              End}
        else If Z>0 then Begin
                          I:=1;
                          While Sum<K do
                          Begin
                           If A[I]+Z<=P[B[I]] then Begin
                                                    Sum:=Sum+Z;
                                                    A[I]:=A[I]+Z;
                                                    Inc(Kol);
                                                    T[Kol]:=B[I];
					            Inc(I);		
                                                   End
                                              else Begin
						    Sum:=Sum+
                          End;
                         End;}
 
  For I:=1 to Kol do
   WriteLn(T[I]);
 Close(Output);
End.














