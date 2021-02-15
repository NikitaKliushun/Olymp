{Tsybulko Alexey}
Program T1Z1N56;
var
k,w,y:longint;
h,x,i,j,z:integer;
begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
readln(k);
h:=1;
w:=2;
x:=k;
z:=w;
i:=h;
j:=w;
while (k-h*w<>0) or (k-h*w>3) or(k-h*w=1) do
begin
y:=k div h;
w:=y;
if ((k-h*w<3) and (k-h*w>=0)) and (sqr(h-w)+sqr(k-h*w)<sqr(x-h)+sqr(k-x*h))
and (sqr(h-w)<sqr(z-h))
 then
begin
i:=h;
j:=w;
x:=i;
z:=j;
end;
if sqr(h*w)<>k-1 then h:=h+1;
end;
writeln(i,' ',j);
Close(input);
Close(output);
end.




