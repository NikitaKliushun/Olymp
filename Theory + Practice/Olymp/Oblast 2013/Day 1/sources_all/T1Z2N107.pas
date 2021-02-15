program T1Z2N107;
var a,b,c,k,l:longint;
    I:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(a,c);
i:=1;
if a>c then begin
            l:=c;
            c:=a;
            a:=l;
            end;
l:=1;
for i:=a to c div 2 do begin
        if c mod i=0 then k:=i;
        if (k mod a=0)and(k<>l) then begin inc(b);end;
        l:=k;
                       end;
writeln(b);
close(input);
close(output);
end.
