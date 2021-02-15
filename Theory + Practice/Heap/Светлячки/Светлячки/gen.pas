var
     N,M,X:Int64;
     i:Longint;
begin
     //Assign(Input,'Input1.txt');
     //Reset(Input);
     Assign(Output,'Input25.txt');
     ReWrite(Output);
     randomize;
     N:=Random(100000)+1;
     M:=Random(100000)+1;
     Writeln(N,' ',M);
     for i:=1 to N do
     Write(Random(M)+1,' ');
     Close(Output);
 end.
