{T1Z3N20; Romanenya Ilya Yur'evich; Slutsk}
var i,j,m,n,mm: integer;
nm: array [1..32000] of integer;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

read(n,m);
for i:=1 to n do nm[i]:=i;

for i:=1 to m do
    begin
       read(mm);
       write(nm[mm],' ');
       {for j:=1 to mm[i] do
       inc(nm[j]);}
       for j:=1 to n do
       if nm[j]<nm[mm] then inc(nm[j]);
    nm[mm]:=1;
    end;
{while i<j+1000000 do dec(i);  }
close(input);
close(output);
end.
