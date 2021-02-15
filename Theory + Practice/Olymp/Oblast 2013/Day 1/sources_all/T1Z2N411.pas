program zad2; {Пранник Владимир Владимиравич,9'В',Пуховический район г.Марьина Горка,второе задание}
var B,A,s,o,C,d,i,j,N,T:longint;
f1,f2:text;
begin
Assign(f1,'in.txt');
Reset(f1);
Assign(f2,'out.txt');
Rewrite(f2);
read(f1,A,C);
for i:=(A-1) to C do
if (C mod (i+1)=0) and ((i+1) mod A=0)
then B:=B+1;
write(f2,B);
close(f1);
close(f2);
end.

