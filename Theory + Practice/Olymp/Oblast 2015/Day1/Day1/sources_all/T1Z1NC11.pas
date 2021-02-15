//Ефимович Максим Геннадьевич, г.Солигорск, 11 класс, №1
var a:array[1..100] of int64;
    n,k,i,ans,j,c:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(n,k);
for i:=1 to n do
 begin
 read(c);
 inc(a[c]);
 end;
ans:=0;
for i:=1 to 100 do
 begin
 a[i]:=a[i] div k;
 inc(ans,a[i]);
 end;
if ans=0 then write(ans)
         else writeln(ans);
for i:=1 to 100 do
 begin
 if a[i]>0 then begin for j:=1 to a[i] do write(i,' '); end;
 end;
close(input);
close(output);
end.