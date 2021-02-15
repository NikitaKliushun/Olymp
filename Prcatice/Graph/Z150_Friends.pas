Var
 N,S,i,j,Ans : Longint;
 A : array [1..100,1..100] of Longint;
 Met : Array [1..100] of Longint;

Procedure DFS (x : Longint);
Var
 i : Longint;

begin
 Inc(Ans);
 Met[x]:=1;
 for i:=1 to N do
  If (met[i] = 0) and (a[x,i] = 1) then DFS(i);
end;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N,S);
  for i:=1 to N do
   for j:=1 to N do
    Read(a[i,j]);
 Close(Input);
 Ans:=0;
 DFS(S);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Ans-1);
 Close(Output);
End.
