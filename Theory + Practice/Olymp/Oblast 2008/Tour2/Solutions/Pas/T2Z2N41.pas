{Trainel Andrei Sergeevich 11 klass g.Minsk}
program z2;
var a:array[1..1000000] of char;
   n,k,i:longint;
begin
assign(input,'input.txt');
assign(output,'outpt.txt');
reset(input);
rewrite(output);
read(n,k);
for i:=1 to n do
read(a[i]);
write(n*n-(n*2+k));
close(input);
close(output);
{HY BOT U BCE ê•·ØÎ HE BIDATú}
end.