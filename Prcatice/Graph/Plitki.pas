Const
 Dx : Array [1..4] of LongInt =(0,1,0,-1);
 Dy : Array [1..4] of LongInt =(1,0,-1,0);

Var
 K,i,j : LongInt;
 x : Char;
 A : Array [1..8,1..8] Of LongInt;

Procedure DFS (x,y : LongInt);
Var
 i,x1,y1 : Longint;

Begin
 For i:=1 to 4 do
 Begin
  x1:=x+Dx[i];
  y1:=y+Dy[i];
  If (x1<=8) and (y1<=8) and (x1>0) and (y1>0) and (a[x1,y1]<>2) then
     If a[x,y]<>a[x1,y1] then DFS(x1,y1)
                         else Begin
                                  Inc(k);
                                  Break;
                              End;
 End;
a[x,y]:=2;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  For i:=1 to 8 do
  Begin
   For j:=1 to 8 do
   Begin
    Read(x);
    If x='W' then a[i,j]:=0
             else a[i,j]:=1;
   End;
   ReadLn;
  End;
 Close(Input);
 For i:=1 to 8 do
  For j:=1 to 8 do
   If a[i,j]<>2 then DFS(i,j);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(k);
 Close(Output);
End.