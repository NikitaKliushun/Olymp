Var
 N,i : Longint;
 A : Array [1..100000] of Longint;

Procedure QSort (L,R : Longint);
Var
  ii,jj,x,c : Longint;

Begin
    ii:=L; jj:=R; x:=L + Random(R-L);
    Repeat
     While a[ii] < a[x] do
      Inc(ii);
     While a[jj] > a[x] do
      Dec(jj);
     If ii>=jj then begin
                        x:=a[ii];
                        a[ii]:=a[jj];
                        a[jj]:=x;
                        Inc(ii);
                        Dec(jj);
                    end;
    Until ii>jj;
    If ii < R then QSort(ii,R);
    If jj > L then QSort(L,jj);
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N);
     For i:=1 to N do
      Read(A[i]);
    Close(Input);
    QSort(1,N);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     For i:=1 to N do
      Write(a[i],' ');
    Close(Output);
End.

