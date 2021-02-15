Var
 N,i : Longint;
 A : Array [1..1000] of Longint;

Procedure QSort (L,R : Longint);
Var
  ii,jj,c,x : Longint;

Begin
    ii:=L; jj:=R; x:=a[L + Random(R-L)];
    Repeat
     while a[ii] < x do
      Inc(ii);
     while a[jj] > x do
      Dec(jj);
     If ii >=jj then begin
                         c:=a[ii];
                         a[ii]:=a[jj];
                         a[jj]:=c;
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
      Read(a[i]);
    Close(Input);
    QSort(1,N);
    Assign(output,'Output.txt');
    ReWrite(Output);
     For i:=1 to N do
      Write(a[i],' ');
    Close(Output);
End.