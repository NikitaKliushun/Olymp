var n,i,k,l:longint;
    f,v:text;
begin
assign(f,'input.txt');
reset(f);
assign(v,'output.txt');
rewrite(v);


read(f,n);
for i:=1 to n do
k:=k+(n div i);
write (v,k);
close(f);
close(v);
end.