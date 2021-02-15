{Drozd Andrey Sergeevich}
program t1z1n03;
var k,n,i,h,w,h1,w1,min:int64;
begin
assign(input,'input.txt');
reset(input);
read(K);
close(input);
assign(output,'output.txt');
rewrite(output);
if k=1 then begin write('1 1');halt;end;
i:=k div 2 +1;
min:=k;
h:=1;
if trunc(sqrt(k))=sqrt(k)
        then begin write(sqrt(k):0:0,' ',sqrt(k):0:0);halt;end;
while h<i do begin
w:=k div h;
if (abs(w-h)+k-w*h)<min then begin w1:=w;h1:=h;min:=abs(w-h)+k-w*h;end;
h:=h+1;
end;
write(h1,' ',w1);
close(output);
end.
