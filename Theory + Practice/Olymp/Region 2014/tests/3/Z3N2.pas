//Const
// Dx : Array [1..4] of Longint = (-1,1,1,-1);
// Dy : Array [1..4] of Longint = (1,1,-1,-1);

Var
 N,M,i,j,Ans,x,y,dx,dy : Longint;
 A : Array [1..100,1..100] of Longint;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N,M);
 Close(Input);
 If N > M then begin
                   i:=N;
                   N:=M;
                   M:=i;
               end;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  If N = M then begin
                    Write(N);
                    Close(Output);
                    Halt;
                end;
{  If N*M mod 2 = 0 then begin
                            Write( (N*M) div 2);
                            Close(Output);
                            Halt;
                        end;}
  x:=1;
  y:=1;
  dx:=1;
  dy:=1;
  while not ((x = N) and (y = 1) or (x=1) and (y=M) or (x=N) and (y=M)) do
  begin
    a[x,y]:=1;
    if (x+dx <= 0) or (x+dx > N) then dx:=-dx;
    if (y+dy <= 0) or (y+dy > M) then dy:=-dy;
    a[x+dx,y+dy]:=1;
    x:=x+dx;
    y:=y+dy;
  end;
  a[x,y]:=1;
  Ans:=0;
  For i:=1 to N do
   For j:=1 to M do
    If a[i,j] = 1 then Inc(Ans);
  Write(Ans);
 Close(Output);
End.
