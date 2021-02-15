Var
 N,i : Longint;
 A : Array [1..100000] of Longint;

Procedure Q_Sort (L,R : Longint);
Var
 ii,jj,x,q : Longint;

Begin
 ii:=L;
 jj:=R;
 x:=A[L+Random(R-L)];
 Repeat
  While a[ii]<x do
   Inc(ii);
  While a[jj]>x do
   Dec(jj);
  If ii<=jj then Begin
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
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
  For i:=1 to N do
   Read(a[i]);
 Close(Input);
 Q_Sort(1,N);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For i:=1 to N do
   Write(a[i],' ');
 Close(Output);
End.