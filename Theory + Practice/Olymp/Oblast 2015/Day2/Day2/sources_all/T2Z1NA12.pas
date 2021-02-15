program T2Z1NA12;{Матвиевич Егор Сергеевич}
var s,t:ansistring;
i,k,ls,lt,n:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
readln(s);readln(t);    k:=0;s:='1'+s;t:='2'+t;
ls:=length(s);lt:=length(t);
if ls>lt then
begin
n:=ls-lt;
for i:=ls downto 1 do
begin
if s[i]=t[i-n] then k:=k+1 else break;
end;
end else
begin
n:=lt-ls;
for i:=lt downto 1 do
begin
if t[i]=s[i-n] then k:=k+1 else break;

end;
end;
write(k);
close(input);close(output);
end.
