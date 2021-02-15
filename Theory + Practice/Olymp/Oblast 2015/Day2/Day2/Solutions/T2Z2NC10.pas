{Golovin Artem, 10 klass, Gymnasia 1 g. Zhodino, zadacha 2, tur 2}
var
   s:ansistring;
   d,i,j,x,xx:int64;
   k:integer;
   flag:boolean;
   f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,s);
val(s,d,k);
flag:=false; x:=0; j:=0;
 while not flag do
  begin
   x:=x+d; j:=j+1;
    for i := 1 to trunc(sqrt(x)) do
     if sqr(i)*i=x then
                       begin
                        flag:=true;
                        break
                       end;
  end;
writeln(f2,j);
close(f1);
close(f2)
end.
