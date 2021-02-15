Uses Math;

Type
 Mas = array [0..70] of Longint;

Var
 N,K,i,j : Longint;
 A : Array [0..1,0..101] of Mas;

Procedure Sum (var a,b,c : Mas);
Var
  i,d : longint;

Begin
    fillchar(c,sizeof(c),0);
    d:=Max(a[0],b[0])+1;
    for i:=1 to d do
    begin
     c[i]:=a[i]+b[i]+c[i];
     c[i+1]:=c[i+1]+c[i] mod 10;
     c[i]:=c[i] div 10;
    end;
    i:=d;
    while (i > 1) and (c[i] = 0) do
     dec(i);
    c[0]:=i;
end;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N,K);
    Close(Input);
    N:=N div 5;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     if (N=0) or (K=0) then begin
                                Write(1);
                                Halt;
                            end;
     For i:=1 to N+K do
     begin
         a[0,0][1]:=1;
         For j:=1 to K do
          Sum(a[0,j-1],a[0,j],a[1,j]);
         a[0]:=a[1];
     end;
     For i:=a[1,k][0] downto 1 do
      Write(a[1,k][i]);
    Close(Output);
End.