Var
 N,i,S,F,x,y,R,Ans : Longint;
 A : Array [0..100] of Longint;

Begin
 ReadLn(N);
 Read(S,F);
 For i:=2 to N do
 Begin
  Read(x,y);
  a[x]:=1;
  a[y]:=-1;
 End;
 i:=S;
 While i>=0 do
 Begin
  If a[i]=1 then Begin
                     Inc(R);
                     Break;
                 End;
  If a[i]=-1 then Break;
  Dec(i);
 End;
 For i:=S to F do
 Begin
  r:=R+a[i];
  If R=0 then Inc(Ans);
 End;
 Write(Ans);
End.