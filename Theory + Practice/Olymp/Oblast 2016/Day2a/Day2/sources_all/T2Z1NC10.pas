program z1;
var
a: array[1..100000,1..2] of longint;
m,w,s,b,t,i,j,n,k,d,otv,met,sum: longint;
begin
assign(input, 'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(m,w);
readln;
met:=0;
otv:=0;
sum:=0;
                for i:=1 to m do
                        begin
                        read(d);
                        sum:=sum+d;
                        j:=0;
                        while j<d do
                                begin
                                inc(j);
                                a[j+met,2]:=j;
                                end;
                        met:=met+d;
                        end;
readln;
read(s,b,t);
i:=1;
while i<=sum do
        begin
        a[i,1]:=s;
        if s<w then inc(s)
                else s:=1;
        i:=i+1;
        end;
for i:=1 to sum do
        begin
        if (a[i,1]=b) and (a[i,2]=t) then inc(otv);
        end;
if otv=0 then write('0')
         else write(otv);
close(input);
close(output);
end.
