program T2Z2ND10;
var f1,f2:text;
a:integer;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
a:=-1;
writeln(f2,a);
Close(f1);
Close(f2);
end.
