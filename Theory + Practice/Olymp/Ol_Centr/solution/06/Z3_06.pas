var
     i,M,j:Longint;
     A,B,A1,B1,F1,F2:Int64;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(A,B,M);
     A1:=1;
     B1:=1;
     for i:=1 to M do
begin
     for j:=1 to i do
begin
     A1:=(A1*A) mod i;
     B1:=(B1*B) mod i;
 end;
     if (A1+B1) mod i=0 then Writeln(i);
     A1:=1;
     B1:=1;
 end;
     Close(Input);
     Close(Output);
 end.

