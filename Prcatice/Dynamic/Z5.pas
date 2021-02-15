Uses Math;

Var
  N,i,j : Longint;
  A : Array [1..50] of Longint;
  F : Array [1..50,0..50000] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N);
     For i:=1 to N do
      Read(a[i]);
    Close(Input);
    f[1,0]:=a[1]; f[1,a[1]]:=0;
    For i:=1 to N do
     For j:=0 to N do
     begin
         f[i,j]:=Min(F[i,j],f[i,j-1] + a[j]);
         f[Abs(i-a[j]),j]:=Min(f[Abs(i-a[j]),j],f[i,j-1]);
         f[Abs(i+a[j]),j]:=Min(f[Abs(i+a[j]),j],f[i,j-1]);
     end;
     Write(f[N,0]);
End.