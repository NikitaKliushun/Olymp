Var
 D,i : Longint;
 F : Boolean;
 Sq : Array [1..1000] of Int64;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(D);
 Close(Input);
 For i:=1 to D do
  Sq[i]:=i*i*i;
 i:=1;
 F:=False;
 While i <= D do
 begin
  If Sq[i] mod D = 0 then begin
                              F:=True;
                              Break;
                          end;
  Inc(i);
 end;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  If F then Write(Sq[i] div D)
       else Write(D*D*D);
 Close(Output);
End.
