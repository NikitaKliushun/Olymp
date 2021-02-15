Var
 N,x,y,i,Kol1,Kol2 : Longint;
 A,B : array [0..100] of Longint;

Begin
 Read(n);
 For i:=1 to N do
 Begin
  Read(x,y);
  If a[x]=0 then Inc(Kol1);
  If b[y]=0 then Inc(Kol2);
  Inc(a[x]);
  Inc(b[y]);
 End;
 If Kol1<Kol2 then Write(Kol1)
              else Write(Kol2);
End.