var n,k,i:longint;
    d:array[1..100000] of longint;
begin
assign(output,'output.txt'); rewrite(output);
assign(input,'input.txt'); reset(input);
readln(n,k);
for i:=1 to n do read(d[i]);
if n=k then begin
writeln(k);
            for i:=1 to n do write(i,' ');
            end;
close(input);
close(output);
end.
