var
t,k,k1,m,i,j,w,s,b,q:integer;
x,d:array[1..10000] of integer;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,m,w);
q:=0;

for i:=1 to m do
read(f1,d[i]);
read(f1,s,b,t);
for j:=1 to m do
  begin
  k:=1;
  k1:=s;
    for i:=1 to  (d[j] + s-1) do
       if (i>s) or (i=s) then
           begin
           if (k1>w) then
                begin
                 k1:=1;
                end;
           if (k1=b) and (t=k) then

                  q:=q+1;
                  inc(k);
                  inc(k1);

           end;
           if k1>w then s:=1
                   else s:=k1
                   end;
write(f2,q);
close(f1);
close(f2);
end.