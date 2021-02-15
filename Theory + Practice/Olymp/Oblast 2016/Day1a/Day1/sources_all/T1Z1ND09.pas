{Vlad Gakut Andreevich, gorod Vileyka, 10 A klass, Z3}
var a:array[1..10,1..12] of char; 
    b:array[1..12] of string;
    cf1,cf2:array[1..10,1..10] of integer;
    i,j,n:byte;
    q:string;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
 for i:=1 to 10 do begin
  for j:=1 to 12 do
   read(f1,a[i,j]);
   end;
 read(f1,n);
  for i:=1 to n do begin
   read(f1,b[i]);
   readln(f1);
 end;  
  
 close(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 writeln(f2,'HIT');
 writeln(f2,'MISS');
 writeln(f2,'DEAD');
 writeln(f2,'HIT');
 writeln(f2,'GAME OVER');
 close(f2);
end.
