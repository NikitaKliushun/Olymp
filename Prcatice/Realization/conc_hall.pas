Var
 N,M,x,Max,Ans,i,j,Max1,Max2 : Longint;
 F : Boolean;
 a : Array [1..200000] of Longint;

Function Min (x,y : Longint) : Longint;
Begin
    If x < y then Min:=x
             else Min:=y;
    If (x = 0) then Min:=y;
    if (y = 0) then Min:=x;
    if (x = 0) and (y = 0) then Min:=a[i];
End;

Begin
    Assign(Input,'Input.txt');
    Assign(Output,'Output.txt');
    ReSet(Input);
    ReWrite(Output);
     Read(N);
    { i:=1;
     While i <= N do
     begin
         Read(x);
         while True do
         begin
             If x <> x1 then Break;
             Read(x1);
             Inc(i);
         end;
         If x > Max then begin
                             Ans:=Ans + Abs(x - Max);
                             Max:=x;
                         end
                    else
         if x1 > Max then begin
                              Ans:=Ans + Abs(x1 - Max);
                              Max:=x1;
                          end;
         Inc(i);
     end; }
     Read(x); m:=1; a[m]:=x;
     For i:=2 to N do
     begin
         Read(x);
         if x <> a[m] then begin
                                 Inc(M);
                                 a[m]:=x;
                             end;
     end;
{     i:=1; Max:=a[1];
     while i <= N do
     begin
         while a[i] = a[i+1] do
          Inc(i);
         Ans:=Ans + Abs(Max - a[i]);
         if a[i] > Max then Max:=a[i];
         Inc(i);
     end;}
     For i:=1 to M do
     begin
         Max1:=0; Max2:=0; Max:=0;
         j:=i-1;
         While (j > 0) and (a[j] <= a[i]) do
          Dec(j);
         if (j > 0) and (j <> i) and (a[j] > Max1) then Max1:=a[j];
         j:=i+1;
         While (j <= M) and (a[j] <= a[i]) do
          Inc(j);
         if (j <= M) and (j <> i) and (a[j] > Max2) then Max2:=a[j];
         Max:=Min(Max1,Max2);
         Ans:=Ans + Abs(Max - a[i]);
     end;
     Write(Ans);
    Close(Input);
    Close(Output);
End.