Type
 T = record
          n,p,k : Longint;
     End;
Var
 N,M,I : Longint;
 A : Array [1..100000] Of T;

Procedure Q_Sort (L,R : Longint);
Var
 ii,jj,x : Longint;
 q : T;

Begin
 ii:=L;
 jj:=R;
 x:=a[L+Random(R-L)].n;
 Repeat
  While a[ii].n<x do
   Inc(ii);
  While a[jj].n>x do
   Dec(jj);
  If ii<=jj then begin
                     q:=a[ii];
                     a[ii]:=a[jj];
                     a[jj]:=q;
                     Inc(ii);
                     Dec(jj);
                 End;
 Until ii>jj;
 If ii<R then Q_Sort(ii,R);
 If jj>L then Q_Sort(L,jj);
End;

Begin
 Read(N,M);
 For i:=1 to N do
 Begin
  Read(a[i].n);
  A[i].p:=1;
 End;
 Q_Sort(1,N);
 i:=N;
 a[n]:=1;
 While i>0 do
 Begin
  F:=0;
  While a[i].n=a[i-1].n do
  Begin
   A[i-1].kol:=a[i].kol+1;
   Dec(i);
   F:=1;
  End;
  If F=0 then a[i].kol:=1;
  Dec(i);
 End;


End.
