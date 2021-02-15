Const
 Inf = 1000000000;

Var
 N,S,F,i,j,Min,MinN : Longint;
 A : array [1..100,1..100] of Longint;
 All,Met : Array [1..100] of Longint;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N,S,F);
  For I:=1 to N do
   for j:=1 to N do
   begin
    a[i,j]:=Inf;
    Read(a[i,j]);
    if a[i,j] = -1 then a[i,j]:=Inf;
   end;
 Close(Input);
 For i:=1 to N do
  All[i]:=a[s,i];
 Met[s]:=1;
 for i:=1 to N-1 do
 begin
  Min:=Inf;
  for j:=1 to N do
   if (Met[j] = 0) and (all[j] < Min) then begin
                                               Min:=All[j];
                                               MinN:=j;
                                           end;
  if Min <> Inf then
  begin
   Met[MinN]:=1;
   for j:=1 to N do
    if (met[j] = 0) and (all[j] > a[MinN,j] + All[MinN]) then all[j]:=a[MinN,j]+All[MinN];
  end;
 end;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  If All[f] = Inf then Write(-1)
                  else Write(All[f]);
 Close(Output);
End.
