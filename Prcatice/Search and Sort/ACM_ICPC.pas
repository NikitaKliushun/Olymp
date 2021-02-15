Type
  T = record
           n : String;
           num,met,p : Longint;
      End;
Var
 N,P,Kol,k,i,j : Longint;
 A : Array [1..100000] of T;
 B : Array [1..100000] of Longint;

Procedure Q_Sort (L,R : Longint);
Var
 ii,jj : Longint;
 x : String;
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

Procedure Q_Sort_1 (L,R : Longint);
Var
 ii,jj,x : Longint;
 q : T;

Begin
 ii:=L;
 jj:=R;
 x:=a[L+Random(R-L)].p;
 Repeat
  While a[ii].p<x do
   Inc(ii);
  While a[jj].p>x do
   Dec(jj);
  If ii<=jj then begin
                     q:=a[ii];
                     a[ii]:=a[jj];
                     a[jj]:=q;
                     Inc(ii);
                     Dec(jj);
                 End;
 Until ii>jj;
 If ii<R then Q_Sort_1(ii,R);
 If jj>L then Q_Sort_1(L,jj);
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(P,N,k);
  For i:=1 to P do
   ReadLn(A[i].n);
  For i:=1 to P do
  Begin
   a[i].p:=i;
   Read(a[i].num);
  End;
 Close(Input);
 Q_Sort(1,P);
 i:=1;
 j:=1;
 While i<P do
 Begin
  While a[i].n=a[i+1].n do
  Begin
   A[i].met:=j;
   A[i+1].met:=j;
   Inc(i);
  End;
  Inc(i);
  Inc(j);
 End;
 Q_Sort_1(1,P);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  i:=1;
  While Kol<N do
  Begin
   Inc(B[a[i].met]);
   If B[a[i].met]<=k then Begin
                              WriteLn(A[i].n,' #',a[i].num);
                              Inc(Kol);
                          End;
   Inc(i);
  End;
 Close(Output);
End.
