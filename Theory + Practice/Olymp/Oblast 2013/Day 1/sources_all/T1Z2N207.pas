program T1Z2N207;
var a,b,c,x,s:int64;
i:longint;
begin
    assign(input,'input.txt');
    reset(input);
    readln(a,c);
    close(input);
    assign(output,'output.txt');
    rewrite(output);
    if a=c then begin
        writeln(1);
    end else begin
        s:=0;
        for i:=1 to (c div a) do begin
            if c mod (a*i)=0 then begin
                inc(s);
            end;
        end;
        writeln(s);
    end;
    close(output);
end.
