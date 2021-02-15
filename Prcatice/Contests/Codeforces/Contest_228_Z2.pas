Var
 N,i,j,Kol : Longint;
 A : Array [1..100,1..100] of Char;
 Met : Array [1..100,1..100] of Longint;

Begin
 ReadLn(N);
 For i:=1 to N do
 Begin
  For j:=1 to N do
  Begin
   Read(a[i,j]);
   If a[i,j]='#' then Inc(Kol);
  End;
  ReadLn;
 End;
  If Kol mod 5 <> 0 then Begin
                             Write('NO');
                             Halt;
                         End;
 Kol:=0;
 For i:=2 to N do
  For j:=2 to N do
   If (a[i,j] = '#') and (Met[i,j]<>1) then Begin
                                                If (a[i-1,j]='#') and (a[i,j+1]='#') and (a[i+1,j]='#') and (a[i,j-1]='#')
                                                   and (met[i-1,j]=0) and (met[i,j+1]=0) and (met[i+1,j]=0) and (met[i,j-1]=0)
                                                   then Begin
                                                            met[i-1,j]:=1;
                                                            met[i,j+1]:=1;
                                                            met[i+1,j]:=1;
                                                            met[i,j-1]:=1;
                                                            met[i,j]:=1;
                                                         End;
                                             End;
 For i:=1 to N do
  For j:=1 to N do
   If (a[i,j]='#') and (met[i,j]=0) then Begin
                                             Write('NO');
                                             Halt;
                                         End;
 Write('YES');

End.