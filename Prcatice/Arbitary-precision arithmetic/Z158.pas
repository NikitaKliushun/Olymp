Uses Math;

Var
  K,N,X_S,X_F,Y,L1 : Longint;
  A,B : Array [1..1000] of Longint;

Procedure F (a : array [1..1000] of Longint; b : Longint);
var
 c,i : Longint;

begin
    c:=0;
    For i:=1 to l do
    begin
        a[i]:=a[i] * B + c;
        c:=a[i] div 10;
        a[i]:=a[i] mod 10;
    end;
    While c > 0 do
    begin
        Inc(l);
        a[l]:=c mod 10;
        c:=c div 10;
    end;
end;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N,K);
    Close(Input);
    N:=N div 5;
    Y:=Min(N,K);
    X_F:=N+K; X_S:=X_F - Max(N,K) + 1;
    a[1]:=1; L1:=1;
    For i:=X_S to X_F do
     F(a,i);
    b[1]:=1; L2:=1;
    For i:=2 to Y do
     F(b,i);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     For i:=1 to L1 do
      Write(a[i]);
     WriteLn;
     For i:=1 to L2 do
      Write(b[i]);
    Close(Output);
End.