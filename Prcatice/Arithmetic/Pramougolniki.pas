Type
 M = record
           y,met : Longint;
     End;
 T = record
          x,y : Longint;
     end;

Var
 N,i,j,ii,jj,Kol,S,P,F,Pr : LongInt;
 c : T;
 c1 : M;
 A : Array [1..201] Of T;
 Y : Array [1..201] of M;

Procedure Shift (var a,b: Longint);
Var
 c : LongInt;
Begin
 c:=a;
 a:=b;
 b:=c;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N);
  i:=1;
  While i<=N*2 do
  Begin
   ReadLn(a[i].x,a[i].y,a[i+1].x,a[i+1].y);
   If a[i].x>a[i+1].x then Shift(a[i].x,a[i+1].x);
   If a[i].y<a[i+1].y then Shift(a[i].y,a[i+1].y);
   Inc(I,2);
  End;
 Close(Input);
 For i:=1 to n*2-1 do
  For j:=1 to n*2-i do
   If a[i].x>a[i+1].x then Begin
                            c:=a[i];
                            a[i]:=a[i+1];
                            a[i+1]:=c;
                           End;
 For i:=1 to n*2-1 do
 Begin
  Kol:=0;
  For j:=1 to n*2 do
   If (a[j].x>=a[i].x) and (a[j].x<a[j+1].x) then Begin
                                                   Inc(Kol);
                                                   y[kol].y:= a[j].y;
                                                   y[kol].met:=1;
                                                   Inc(Kol);
                                                   y[kol].y:=a[j+1].y;
                                                   y[kol].met:=-1;
                                                  End;
   For ii:=1 to kol-1 do
    For jj:=1 to kol-ii do
     If y[jj].y<y[jj+1].y then Begin
                                c1:=y[jj];
                                y[jj]:=y[jj+1];
                                y[jj+1]:=c1;
                               End;
   F:=0;
   S:=0;
   Pr:=0;
   For j:=1 to kol do
   Begin
    If F>0 then S:= S + (Pr - y[j].y);
    f:=f+y[j].met;
    Pr:=y[j].y;
    If f=0 then P:=P + S * (a[i+1].x-a[i].x);
   End;
  End;
  Assign(Output,'Output.txt');
  ReWrite(Output);
   Write(P);
  Close(Output);
End.
