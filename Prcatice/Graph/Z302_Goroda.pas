Type
 S_R = record
        X,Y : Extended;
       End;
 V_R = record
        X,Y : Longint;
        R : Extended;
       End;

Var
 N,M,i,j,P1,P2 : Longint;
 Ans : Extended;
 A : Array [1..1000] of S_R;
 B : Array [1..500000] of V_R;
 P : Array [1..1000] of Longint;

Procedure Q_Sort (L,R : Longint);
Var
 ii,jj : Longint;
 x : Extended;
 q : V_R;

Begin
 ii:=L;
 jj:=R;
 x:=b[L+Random(R-L)].r;
 Repeat
  While b[ii].r<x do
   Inc(ii);
  While b[jj].r>x do
   Dec(jj);
  If ii<=jj then begin
                     q:=b[ii];
                     b[ii]:=b[jj];
                     b[jj]:=q;
                     Inc(ii);
                     Dec(jj);
                 end;
 Until ii>jj;
 If ii<R then Q_Sort(ii,R);
 If jj>L then Q_Sort(L,jj);
End;

Function FindSet (x : Longint) : Longint;
Begin
 If x <> P[x] then P[x]:=FindSet(P[x]);
 FindSet:=P[x];
End;

Procedure Union (x,y : Longint);
Var
 c : Longint;

Begin
 c:=Random(2);
 if c = 0 then P[x]:=y
          else P[y]:=x;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
  For i:=1 to N do
   Read(a[i].x,a[i].y);
 Close(Input);
 M:=0;
 For i:=1 to N do
  For j:=i+1 to N do
  begin
   Inc(M);
   b[M].r:=Sqr(a[i].x - a[j].x) + Sqr(a[i].y - a[j].y);
   b[M].x:=i;
   b[M].y:=j;
  end;
 Q_Sort(1,M);
 For i:=1 to N do
  P[i]:=i;
 i:=1;
 While N > 1 do
 begin
  P1:=FindSet(b[i].x);
  P2:=FindSet(b[i].y);
  If P1 <> P2 then begin
                    Ans:=b[i].r;
                    Union(P1,P2);
                    Dec(N);
                   end;
  Inc(i);
 end;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Sqrt(Ans):0:2);
 Close(Output);
End.
