//Козелько Никита Сергеевич, город Солигорск, 11 класс, задача1
var a:array[1..105] of longint;
    n, k, i, j, aa, ans:longint;

begin

assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);

readln(n, k);

for i:=1 to 100 do
 a[i]:=0;

for i:=1 to n do
 begin

 read(aa);
 inc(a[aa]);


 end;

 ans:=0;
for i:=1 to 100 do
 begin
 if (a[i] div k>0)  then ans:=ans+(a[i] div k);
 end;

if ans>0 then begin

              writeln(ans);
              for i:=1 to 100 do
               for j:=1 to (a[i] div k) do
               write(i, ' ');

              end
         else write(ans);

close(input);  close(output);

end.
