{z2 Chudinov Vyacheslav Borisov Luceum 11'}
var k,n,j:integer;
    input,output:text;
begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 readln(input,n);
 randomize;
 k:=random(10)+4;
 writeln(output,k);
 close(input);
 close(output);
end.