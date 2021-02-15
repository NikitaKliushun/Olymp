Var
 N,i,j : Longint;

Function Check (x : Longint) : Boolean;
Var
 c1,c,j,i : Longint;
 a : Array [1..9] of Longint;


Begin
 c1:=-1;
 c:=-1;
 i:=0;
 FillChar(a,sizeof(a),0);
 Check:=True;
 While x>0 do
 Begin
  c:=x mod 10;
  for j:=1 to i do
   if c = a[j] then begin
                        Check:=False;
                        Exit;
                    end;
  Inc(i);
  a[i]:=c;
  x:=x div 10;
 End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
 Close(Input);
 i:=1;
 j:=0;
 While i<=N do
 Begin
  Inc(j);
  If Check(j) then Inc(i);
 End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(j);
 Close(Output);
End.
