program T2Z2NA12;{Матвиевич Егор Сергеевич}
var d1,d,k,i:longint;   f:boolean;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
read(d);
k:=1;
d1:=d;
f:=false;
while f=false do
 begin
for i:=1 to trunc(sqrt(d)) do
if i*i*i=d then
     begin
     f:=true;break;
     end;
                if f=false then begin
                  d:=d+d1;k:=k+1;      end;
 end;
write(k);
close(input);close(output);
end.
