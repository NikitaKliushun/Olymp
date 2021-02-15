//Рожнов Максим Вячеславович
program T1Z1NE14;
var
sum:int64;
n,k,i,j,p:longint;
a:array[1..1000]of longint;
b:array[0..1000]of longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,k);
fillchar(a,sizeof(a),0);
fillchar(b,sizeof(b),0);
for i:=1 to N do begin
                 read(a[i]);
                 inc(b[a[i]]);
                 end;
for i:=1 to N do b[i]:=(b[i]div k);
for i:=N downto 1 do if (b[i]=0)and(b[i-1]>0)then p:=i-1;
for i:=1 to p do sum:=sum+b[i];
writeln(sum);
if p>0 then begin
for i:=1 to p do
 for j:=1 to b[i] do write(i,' ');
 end;
close(input);
close(output);
end.
