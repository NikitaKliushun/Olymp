program z1;
var n,m,d:longint;
BEGIN
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
read(n,m);
 if m=1 then writeln('0');
 if m=2 then writeln('2');
 if m=3 then writeln('0');
 if n>3 then begin

              d:=n-3;
              writeln(d*n);



             end;

close(input);
close(output);
END.