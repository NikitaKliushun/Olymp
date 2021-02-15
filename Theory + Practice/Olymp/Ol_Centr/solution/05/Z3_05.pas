{
 @utor Gamezo Vladislav, 10 Klass, 2012-2013
 Task 3
}
var
 a,b,M,x,y:Int64;
 time:longint;
 i,j:longint;

begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
 Read(a,b,M);
  For i:=1 to M do begin
   x:=a;
   y:=b;
    For j:=2 to i do begin
       x:=(x*a) mod i;
       y:=(y*b) mod i;
                     end;
   if (x+y)mod i = 0 then Writeln(i);
                   end;
end.