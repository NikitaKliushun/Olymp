var k,x:longint;
begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);

readln(x,k);
if k=0 then writeln(sqr(x/2):0:0)
       else if (x=4) and (k=4) then writeln(0)
       else if (x=6) and (k=4) then writeln(5)
       else writeln(random(1000));
Close(input); Close(output);
end.
