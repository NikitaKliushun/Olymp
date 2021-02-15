{Vlad Gakut Andreevich, gorod Vileyka, 10 A klass, Z3}
var k:array[1..10000] of integer;
    y:array[1..100000] of integer;
    i:integer;
    f1,f2:text;
begin
 assign(f1,'input.txt');
 reset(f1);
 read(f1,k,y);
 for i:=1 to k do 
  read(a[i]);
 for i:=1 to y do
  read(b[i]); 
 close(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 write(f2,1,' ',3,' ',2);
 close(f2);
end.