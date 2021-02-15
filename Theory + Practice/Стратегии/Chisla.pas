Var
 N,I,II,L,XX,H:Longint;
 A:Array[1..999] of Longint;
 B:Array[1..999] of Longint;

Procedure Proverka(X:Longint);
Begin
 If A[X]=0 then A[I]:=1;
End;

Begin
 Assign(Input,'Input.txt');
 Reset(Input);
  ReadLn(N);
 Close(Input);
 I:=998;
 A[999]:=1;
 While I>=N do
 Begin
  If I+1<=999 then Proverka(I+1);
  If I+2<=999 then Proverka(I+2);
  If I+3<=999 then Proverka(I+3);
  If I+10<=999 then Proverka(I+10);
  If I+20<=999 then Proverka(I+20);
  If I+30<=999 then Proverka(I+30);
  If I+100<=999 then Proverka(I+100);
  If I+200<=999 then Proverka(I+200);
  If I+300<=999 then Proverka(I+300);
  Dec(I);
 End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  If A[N]=0 then WriteLn('Первый проигрывает')
            else begin
                  WriteLn('Первый выигрывает');
                  XX:=N;
                  If (XX+1<=999) and (A[XX+1]=0) then WriteLn(XX+1);
                  If (XX+2<=999) and (A[XX+2]=0) then WriteLn(XX+2);
                  If (XX+3<=999) and (A[XX+3]=0) then WriteLn(XX+3);
                  If (XX+10<=999) and (A[XX+10]=0) then WriteLn(XX+10);
                  If (XX+20<=999) and (A[XX+20]=0) then WriteLn(XX+20);
                  If (XX+30<=999) and (A[XX+30]=0) then WriteLn(XX+30);
                  If (XX+100<=999) and (A[XX+100]=0) then WriteLn(XX+100);
                  If (XX+200<=999) and (A[XX+200]=0) then WriteLn(XX+200);
                  If (XX+300<=999) and (A[XX+300]=0) then WriteLn(XX+300);
                 end;
 Close(Output);
End.

