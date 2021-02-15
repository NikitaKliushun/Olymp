{z1 Chudinov Vyacheslav Borisov Luceum 11'}
var n,h,w,i,o,j:integer;
    k:longint;
    input,output:text;
begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 readln(input,k);
 h:=1;
 w:=1;
 for o:=1 to k div 2 do
  if (sqr(o)<=k)and(sqr(o+1)>k)
   then
    n:=o;
 h:=n;
 for i:=n to k do
  if (i*n<=k)and((i+1)*n>k)
   then w:=i;
 writeln(output,h,' ',w);
 close(input);
 close(output);
end.
