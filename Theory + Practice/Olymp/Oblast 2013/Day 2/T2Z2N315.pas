program z2;


var
d,r:array[1..20000] of longint;
i,n,m,j,k,sort,i1,j1 :longint;

begin
assign(input,'in.txt');
reset(input);
assign(output,'out.txt');
rewrite(output);
    read(n,k);
   for i:=1 to n do
    read(d[i]);



  writeln(k);


  for i:=1 to k do
  begin

   write(i,' ');
   end;

   close(input);
   close(output);


end.
