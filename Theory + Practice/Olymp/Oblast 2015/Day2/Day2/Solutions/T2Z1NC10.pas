{Golovin Artem, 10 klass, Gymnasia 1 g. Zhodino, zadacha 1, tur 2}
type
    mas=array[1..1000000] of char;
var
   s,ss:mas;
   i,x,n,m,k:int64;
   f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
n:=0; m:=0;
 while not eoln(f1) do
  begin
   n:=n+1;
   read(f1,s[n])
  end;
readln(f1);
 while not eoln(f1) do
  begin
  m:=m+1;
  read(f1,ss[m])
  end;
 if n<m then x:=n
        else x:=m;
k:=0;
 for i := x downto 1 do
  begin
   if s[n]=ss[m] then k:=k+1
                 else break;
   n:=n-1; m:=m-1;
  end;

writeln(f2,k);
close(f1);
close(f2)
end.
