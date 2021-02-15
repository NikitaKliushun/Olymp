Program karta;
var ans,j,i,n,m:longint;
a:array[1..400,1..400] of integer;
 begin

 assign(input,'input.txt');
 reset(input);
 read(n,m);
 for i:=1 to n do
 for j:=1 to m do read(a[i,j]);

 close(input);

    for i:=1 to n do
 for j:=1 to m do

 ans:=(n*m)-2;



   assign(output,'output.txt');
 rewrite(output);
  write(ans);
 close(output);



 end.
