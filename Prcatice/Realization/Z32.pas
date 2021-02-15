Var
   A,B : Longint;

Function Max (x : Longint) : Longint;
Var
  i,j,cod : Longint;
  ans : String;
  m : array [0..9] of Longint;

Begin
    fillchar(m,sizeof(m),0); ans:='';
    while x > 0 do
    begin
        inc(m[x mod 10]);
        x:=x div 10;
    end;
    for i:=9 downto 0 do
     for j:=1 to m[i] do
      ans:=ans+Chr(Ord('0') + i);
    Val(ans,Max,cod);
End;

Function Min (x : Longint) : Longint;
Var
  i,j,k,k_n,cod : Longint;
  ans : String;
  m : array [0..9] of Longint;

Begin
    fillchar(m,sizeof(m),0); ans:=''; k_n:=0;
    while x > 0 do
    begin
        inc(m[x mod 10]);
        x:=x div 10;
    end;
    for i:=0 to 9 do
    begin
     If (i = 0) and (m[i] > 0) then k_n:=m[i];
     for j:=1 to m[i] do
     begin
      if (i = 0) and (k_n > 0) then Break;
      ans:=ans+Chr(Ord('0') + i);
      if k_n > 0 then begin
                          for k:=1 to k_n do
                           ans:=ans+'0';
                          k_n:=0;
                      end
     end;
    end;
    Val(ans,Min,cod);
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     Read(A,B);
     If (b < 0) and (a > 0) then Write(Max(a) + Max(Abs(b)));
     If (b < 0) and (a < 0) then Write(-Min(Abs(a)) + Max(Abs(b)));
     If (b > 0) and (a > 0) then Write(Max(a) - Min(b));
     If (b > 0) and (a < 0) then Write(-Min(Abs(a)) - Min(b));
    Close(Input);
    Close(Output);
End.
