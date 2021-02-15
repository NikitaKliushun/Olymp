Var
 K,Kol,i,j : longint;
 A : Array [1..100000] of Longint;

Procedure Per (s,x : longint);
Var
 j1 : Longint;

Begin
 If x>k then Exit;
  For j1:=0 to 2 do
   If (j1+s) mod 3=0 then Begin
                             If x=3 then Kol:=
                                    else Kol:=;
                             a[x]:=j1;
                             Per(a[x-1]+a[x],x+1);
                            End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(K);
 Close(Input);
 Kol:=1;
 For i:=0 to 2 do
 For j:=0 to 2 do
 Begin
  A[1]:=i;
  A[2]:=j;
  Per(a[1]+a[2],3);
 End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Kol);
 Close(Output);
End.
