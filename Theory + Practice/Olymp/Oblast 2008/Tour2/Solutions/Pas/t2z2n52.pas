{Свиpиденко Гpигоpий, 11Б, гимназия г.Дзеpжинска}
{$-02}
program t2z2n52;
var n,j,i,k:longint;
    s:string;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(n,k,s);


for i:=1 to n do
  for j:=1 to n do
  if s[i]=s[j] then  
   k:=2;
writeln(n*2+k);
close(input);
close(output);
end.
