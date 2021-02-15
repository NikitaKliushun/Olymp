program n4;
var
x,t,y,sum,k,z,i,j,n:longint;
a:array[1..100,1..100] of longint;

Function min(t,f:longint):longint;
Begin
 if t<f then min:=t else min:=f;
end;
 Begin
 {Масаковский Дмитрний Владимирович, Слуцк,9 класс,задача 1}
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(n);

 for i:=1 to n-1 do
  begin
   read(x,y,z);
   read(x,y,t);
   sum:=sum+min(t,z);
  end;
dec(sum);
write(sum);

close(input);
close(output);
end.