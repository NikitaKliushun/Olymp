Const
 Dx : Array [1..4] of LongInt = (0,1,0,-1);
 Dy : Array [1..4] of LongInt = (1,0,-1,0);

Var
 i,j,K : Longint;
 A : Array [1..8,1..8] of Char;
 b : Array [1..8,1..8] of Integer;

Procedure DFS (x,y : Longint);
Var
 i : Longint;
 P : Char;

Begin
 b[x,y]:=1;
 For i:=1 to 4 do

  If (x+Dx[i]<=8) and (y+Dy[i]<=8) and (x+Dx[i]>0) and (y+Dy[i]>0)
     then If (a[x,y]<>a[x+Dx[i],y+Dy[i]]) and (b[x+Dx[i],y+Dy[i]]=0) then DFS(x+Dx[i],y+Dy[i]);
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  For i:=1 to 8 do
  Begin
   For j:=1 to 8 do
    Read(a[i,j]);
   ReadLn;
  End;
 Close(Input);
 For i:=1 to 8 do
  For j:=1 to 8 do
    If b[i,j] = 0 then Begin
                            Inc(k);
                            DFS(i,j);
                        End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(K);
 Close(Output);
End.