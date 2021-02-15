{
 @utor Gamezo Vladislav, 10 Klass, 2012-2013
 Task 4
}

var
 N,M,S,X:Int64;
 i:longint;

begin
 Assign(input,'input.txt');
 Reset(input);
 Assign(output,'output.txt');
 Rewrite(output);
  Read(N);
 if N and 1 = 1 then M:=(N+1) div 2 
                else M:=N div 2;
 S:=M;
 X:=N-M;
  For i:=1 to X do
   Inc(S,N div i);
 Writeln(S);
end.