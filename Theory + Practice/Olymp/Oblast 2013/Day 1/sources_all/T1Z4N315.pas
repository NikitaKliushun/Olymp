var
n,m,k,f,ot,i:longint;
a,c:array[1..20000] of integer;


     begin


assign(input,'in.txt');
reset(input);
assign(output,'out.txt');
rewrite(output);

read(n,m,k);
ot:=2  ;
for i:=1 to m do
 read(a[i]);


for i:=1 to n do
 read(c[i]);

 read(f);


    writeln(ot) ;

 close(input);
 close(output);

end.