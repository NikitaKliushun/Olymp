Var
  N,i : Longint;
  S : Int64;
  A : Array [1..10000] of Longint;

Procedure QSort (L,R : Longint);
Var
  ii,jj,x,q : Longint;

Begin
    ii:=L; jj:=R; x:=L + Random(R - L);
    Repeat
     While a[ii] < a[x] do
      Inc(ii);
     While a[jj] > a[x] do
      Dec(jj);
     if ii <= jj then begin
                          q:=a[ii];
                          a[ii]:=a[jj];
                          a[jj]:=q;
                          Inc(ii); Dec(jj);
                      end;
    Until ii<jj;
    if ii < R then QSort(ii,R);
    if jj > L then QSort(L,jj);
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     ReadLn(N);
     For i:=1 to N do
      ReadLn(a[i]);
    Close(Input);
    QSort(1,N);
    S:=0;
    For i:=1 to N do
     if a[i] > S+1 then Inc(S)
                   else Inc(S,a[i]);
   Assign(Output,'Output.txt');
   ReWrite(Output);
    Write(S+1);
   Close(Output);
End.