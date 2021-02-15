Program Z3;
var
n,m,i,j,ka:integer;
a:array[1..400,1..400] of integer;
begin
   assign(input,'in.txt');
reset(input);
assign(output,'out.txt');
rewrite(output);

readln(n,m);


 for i:=1 to m do
  begin
  for j:=1 to n do
   read(a[i,j]);
  end;


 ka:=(m*n)-2 ;
    writeln(ka);

 close(input);
 close(output);
 end.
