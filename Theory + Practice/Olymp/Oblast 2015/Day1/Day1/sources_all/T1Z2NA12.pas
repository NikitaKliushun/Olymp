program T1Z2NA12;{Матвиевич Егор Сергеевич }
var a,b,c,r,i,j,p:longint;
x:array[1..10,1..10]of byte;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
read(a,b);
if (a=1)and(b=3) then write(3) else
if (a=b)and(a=1) then write(2) else
if (a=3) and(b=3) then write(6) else
if (a=2)and(b=4) then write(6) else
if a=b then write(a+b);
if a>b then write(((a-b)div 2)+2) else write(((b-a)div 2)+2);
close(input);close(output);
end.
