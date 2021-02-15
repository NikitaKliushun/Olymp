Const
 A : Array [1..18] of Int64 = (2, 22, 222, 2222, 22222, 222222, 2222222, 22222222, 222222222,
            2222222222, 22222222222, 222222222222, 2222222222222, 22222222222222,
            222222222222222, 2222222222222222, 22222222222222222, 222222222222222222);

Var
 X,Ans : Extended;
 i     : Longint;

Procedure Per (n : Extended; j : Longint);
Var
 i : Longint;

Begin
 If n >= X then Begin
                    If (Ans=0) or (n<Ans) then Ans:=n;
                    Exit;
                End;
 For i:=j to 18 do
 Begin
     Per(n * A[i],i);
     Per(n * A[i],i+1);
 End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(X);
 Close(Input);
 Ans:=0;
 Per (1,1);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Ans:0:0);
 Close(Output);
End.
