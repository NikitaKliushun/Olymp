Var
 A,B,i,j,Ans,R,C : Longint;

Procedure P(x,y : Longint);
Begin
    If (x <= a) and (y <= b) then Inc(Ans);
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(A,B);
  If A>B then begin
                  C:=A;
                  A:=B;
                  B:=A;
              end;
 Close(Input);
 C:=(A+B);
 R:=Trunc(Sqrt(C));
 Ans:=0;
 for i:=1 to R do
  For j:=i to C do
   If (i mod 2 = 1) and (j mod 2 = 1) then P((i*j)div 2,((i*j) div 2)+1)
                                      else P((i*j) div 2,(i*j) div 2);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Ans);
 Close(Output);
End.
