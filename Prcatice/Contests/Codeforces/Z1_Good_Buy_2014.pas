Var
 N,i,d,x : Longint;
 A : Array [1..30000,1..30000] of Longint;
 M : Array [1..30000] of Longint;

Procedure DFS (x : Longint);
Var
 i : Longint;

Begin
 M[x]:=1;
 if x = d then begin
                   Write('YES');
                   Halt;
               end;
 for i:=1 to N-1 do
 if (m[i] = 0) and (a[x,i] = 1) then DFS(i);
End;

Begin
 Read(N,d);
 for i:=1 to N-1 do
 begin
  Read(x);
  a[x,i+x]:=1;
 end;
 DFS(1);
 Write('NO')
End.
