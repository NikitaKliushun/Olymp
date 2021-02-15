Var
  N,i,L : Longint;
  A : Array [1..3000] of Longint;

Procedure F (b : Longint);
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
     Read(N);
    Close(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     if N = 0 then begin
                       Write(1);
                       Halt;
                   end;
     a[1]:=1; l:=1;
     For i:=2 to N do
      F(i);
     For i:=l downto 1 do
      Write(a[i]);
   Close(Output);
End.