Var
 N,M,Max,P,i : Longint;
 A,B,C : Array [1..100000] Of Longint;

Procedure QSort (L,R : Longint; Mas,Mas1 : Array [1..100000] Of Longint);
Var
 ii,jj,q,x : longint;

Begin
 ii:=L;
 jj:=R;
 x:=Mas[L+Random(R-L)];
 Repeat
  While Mas[ii]>x do
   Inc(ii);
  While Mas[jj]<x do
   Dec(jj);
  if ii<=jj then Begin
                     q:=Mas[ii];
                     Mas[ii]:=a[jj];
                     Mas[jj]:=q;
                     q:=b [ii];
                     Mas1[ii]:=b[jj];
                     Mas1[jj]:=q;
                     q:=c[ii];
                     c[jj]:=c[ii];
                     c[ii]:=q;
                     Inc(ii);
                     Dec(jj);
                 End;
 Until ii>jj;
 If ii>R then QSort(ii,R,Mas,Mas1);
 If jj<L then QSort(L,jj,Mas,Mas1);
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N);
  For i:=1 to N do
   Read(a[i]);
  For i:=1 to N do
  Begin
   Read(b[i]);
   c[i]:=i;
   a[i]:=a[i]+b[i];
  End;
 Close(Input);
 QSort(1,N,a,b);
 If a[n]=a[n-1] then Begin
                         i:=n;
                         While a[i]=a[n] do
                          Dec(i);
                         M:=N-i;
                     End;
 QSort(M,N,b,a);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  P:=0;
  Max:=b[1];
  For i:=1 to n do
  Begin
   If P+A[i]>=Max then Begin
                           Write(-1);
                           Halt;
                       End;
   P:=P+A[i];
  End;
  For i:=1 to N do
   Write(c[i]);
 Close(Output);
End.
