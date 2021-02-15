Var
 N,M,i,j,F : Longint;
 A : Array [1..100] of LOngint;

Procedure Q_Sort (L,R : Longint);
Var
 x,ii,jj,q : Longint;

Begin
 ii:=L;
 jj:=R;
 x:=a[L+Random(R-L)];
 Repeat
  While x>a[ii] do
   Inc(ii);
  While x<a[jj] do
   Dec(jj);
  If ii<=jj then Begin
                     q:=a[ii];
                     a[ii]:=a[jj];
                     a[jj]:=q;
                     Inc(ii);
                     Dec(jj);
                     If F=0 then WriteLn(ii,' ',jj)
                            else WriteLn(jj,' ',ii);
                 End;
 Until ii>jj;
 If L<jj then Q_Sort(L,jj);
 If ii<R then Q_Sort(ii,R);
End;

Begin
 Read(N,M,F);
 For i:=1 to N do
 Begin
  For j:=1 to M do
   Read(a[j]);
   Q_Sort(1,M);
 End;
End.