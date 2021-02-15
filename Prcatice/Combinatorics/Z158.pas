Uses Math;

Type
   Mas = array [0..70] of Longint;


Var
  N,K,i,j,L3,M : Longint;
  A : Array [1..2,0..200] of Mas;

Procedure Sum (var a,b,c : Mas);
Var
 i,j,d : Longint;

Begin
    fillchar(c,sizeof(c),0);
    d:=Max(a[0],b[0])+1;
    For i:=1 to D do
    begin
        c[i]:=a[i] + b[i] + c[i];
        if c[i] > 9 then begin
                             c[i+1]:=c[i] div 10;
                             c[i]:=c[i] mod 10;
                         end;
    end;
    i:=D;
    While (i > 0) and (c[i] = 0) do
     Dec(i);
    c[0]:=i;
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N,K);
    Close(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     If (K = 0) or (N=0) then begin
                                   Write(1);
                                   Halt;
                              end;
     N:=N div 5;
     a[1,1][1]:=1; a[1,1][0]:=1;
     For i:=1 to N+K-1 do
     begin
         a[1,0][1]:=1;
         For j:=1 to K do
          Sum(a[1,j-1],a[1,j],a[2,j]);
         a[1]:=a[2];
     end;
     For i:=a[2,k][0] downto 1 do
      Write(a[2,k][i]);
    Close(Output);
End.
