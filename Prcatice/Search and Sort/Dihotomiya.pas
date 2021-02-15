Var
 N,K,i : Longint;
 A : Array [1..100000] of Longint;

Procedure Q_Sort (L,R : Longint);
Var
 x,ii,jj,q : Longint;
Begin
 ii:=L;
 jj:=R;
 x:=a[L+Random(R-L)];
 Repeat
  While a[ii]<x do
   Inc(ii);
  While a[jj]>x do
   Dec(jj);
  If ii<=jj then begin
                     q:=a[ii];
                     a[ii]:=a[jj];
                     a[jj]:=q;
                     Inc(ii);
                     Dec(jj);
                 end;
 Until ii>jj;
 If ii<R then Q_Sort(ii,R);
 If jj>L then Q_Sort(L,jj);
End;

Procedure Dih (L,R : Longint);
Var
 Mid : Longint;

Begin
 Mid:=L+Random(R-L);
 if a[Mid] > K then Dih(L,Mid)
            else If a[Mid] = K then begin
                                        Write(Mid);
                                        Halt;
                                    end
                               else Dih(Mid,R);
End;

Begin
 Read(N,K);
 For i:=1 to N do
  Read(a[i]);
 Q_Sort(1,N);
 Dih(1,N+1);
End.