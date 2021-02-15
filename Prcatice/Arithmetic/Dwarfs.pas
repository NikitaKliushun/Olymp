Var
 N,i,U,S,x,Max,Maxu : Longint;
 A,B : Array [1..100000] of Longint;

Procedure QSort (L,R : Longint);
Var
 ii,jj,q,x : longint;

Begin
 ii:=L;
 jj:=R;
 x:=a[L+Random(R-L)];
 Repeat
  While a[ii]<x do
   Inc(ii);
  While a[jj]>x do
   Dec(jj);
  if ii<=jj then Begin
                     q:=a[ii];
                     a[ii]:=a[jj];
                     a[jj]:=q;
                     q:=b[ii];
                     b[ii]:=b[jj];
                     b[jj]:=q;
                     Inc(ii);
                     Dec(jj);
                 End;
 Until ii>jj;
 If ii>R then QSort(ii,R);
 If jj<L then QSort(L,jj);
End;


Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N);
  Max:=0;
  For i:=1 to n do
  Begin
   ReadLn(x,a[i]);
   b[i]:=i;
   If a[i]>Max then Begin
                        Max:=a[i];
                        Maxu:=x;
                    End;
   U:=U+x;
   S:=S+a[i];
  End;
 Close(Input);
 Assign(Output,'Output.txt');
 ReWrite(Output);
 QSort(1,N);
  If (Max>U-Maxu) and (Max>S-Max) then Begin
                               For i:=N downto 1 do
                                Write(b[i],' ');
                              End
                         else Write(-1);
 Close(Output);
End.
