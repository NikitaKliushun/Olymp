program T2Z3NA12;{Матвиевич Егор Сергеевич}
const ks:array[0..9]of integer=(6,3,4,4,4,5,5,3,7,5);
kd:array[0..9]of integer=(0,2,2,2,2,2,2,2,0,1);
var n,k,v,ch,kof,i:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
kof:=1000000007;  v:=1;
readln(n,k);read(ch);
if (n=1) and (k<2) and((ch=6)or(ch=9)) then v:=2;
if (n=1) and (k>=2) and ((ch=6)or(ch=5)or(ch=9)) then
v:=3;
for i:=1 to 9 do
if (k=kd[i]) and(ch=i) then
v:=3;
write(v mod kof);
close(input);close(output);
end.
