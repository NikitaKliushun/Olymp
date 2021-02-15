program z1;
var
s,t: ansistring;
i,j,n,k,max,otv: longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(s);
readln(t);
n:=length(s);
k:=length(t);
otv:=0;
if n>k then max:=n
       else max:=k;
while (n>0) and (k>0) do
                      begin
                      if s[n]=t[k] then begin inc(otv); dec(n); dec(k); end
                                   else  begin write(otv); exit; end;
                      end;
write(otv);
close(input);
close(output);
end.
