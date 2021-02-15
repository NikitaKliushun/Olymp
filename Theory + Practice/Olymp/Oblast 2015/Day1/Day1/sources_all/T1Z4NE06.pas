Const
 Inf = 1000000000;

Var
 N,x,y,r,Max_x,Max_y,i,j,k,Max,Min : Longint;
 A : Array [1..125,1..125] of Longint;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
  For i:=1 to N do
   For j:=1 to N do
    a[i,j]:=Inf;
  Max:=0;
  For i:=1 to N-1 do
  begin
      Read(x,y,r);
      a[x,y]:=r;
      a[y,x]:=r;
      If r > Max then begin
                          Max:=R;
                          Max_x:=x;
                          Max_y:=y;
                      end;
  end;
 Close(Input);
 a[Max_x,Max_y]:=0;
 For i:=1 to N do
  For j:=1 to N do
   For k:=1 to N do
    If a[j,k] > a[j,i] + a[i,k] then a[j,k]:=a[j,i]+a[i,k];
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Min:=maxlongint;
  For i:=1 to N do
   If (a[1,i] <> 0) and (a[1,i] < Min) then Min:=a[1,i];
  Write(Min);
 Close(Output);
End.
