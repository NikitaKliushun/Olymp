var
     N,i,Z:Longint;
     Sum:Int64;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(N);
     Sum:=N;
     for i:=2 to (N div 2) do
     Sum:=Sum+(N div i);
     Z:=N-(N div 2);
     Sum:=Sum+Z;
     Writeln(Sum);
     Close(Input);
     Close(Output);
 end.
