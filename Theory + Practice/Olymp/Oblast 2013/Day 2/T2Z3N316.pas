program t2z3;
var v,p,t,n,i,j,ans, k:longint;
a:array[1..100000,1..2] of longint;
b:array[1..100000] of longint;
  min:longint;
               begin


          {zadacha na grafy}


 assign(input,'input.txt');
reset(input);
readln(n,k);
for i:=1 to n do
for j:=1 to 2 do read(a[i,j]);

close(input);


assign(output,'output.txt');
rewrite(output);

if n=k then ans:=0 else if k=0 then ans:=(n-2)+(n-1) else ans:=n-1;

 write(ans);


close(output);


end.
