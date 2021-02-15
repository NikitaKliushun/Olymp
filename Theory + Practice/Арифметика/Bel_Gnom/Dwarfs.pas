Var
 N,i,U,S : Longint;
 B : Array [1..100000] of Longint;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N);
  For i:=1 to n do
  Begin
   ReadLn(a,b);
   If b[i]>Max then Max:=b[i];
   U:=U+a;
   S:=S+b[i];
  End;
 Close(Input);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  If (Max>U) and (Max>S) then Begin
                               For i:=N downto 1 do
                                Write(i,' ');
                              End;
                         else Write(-1)
 Close(Output);
End.