{Golovin Artem, 11, Z2, Zhodino}
type
    mas=array[0..3000] of longint;
var
   b,h:mas;
   i,m,n,j,g:integer;
   f1,f2:text;
 procedure rekursivni_pizdec;
  begin
  end;
 procedure double;
  var
     i,j:integer;
  begin
   for i := i+1 to n-2 do
    for j := j+1 to n-1 do
     if (h[1]+b[i]<h[2]+b[j]) then
                               begin
                                writeln(f2,i,' ',j);
                                break;
                               end;
  end;
 procedure triple;
  var
     i,j,g:integer;
  begin
   for i := 1 to n-3 do
    for j := i+1 to n-2 do
     for g := j+1 to n-1 do
      if (h[1]+b[i]<h[2]+b[j]) and (h[2]+b[j]<h[3]+b[g]) then
                                                          begin
                                                           writeln(f2,i,' ',j,' ',g,' ');
                                                           break;
                                                          end;

  end;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,m,n);
 for i := 1 to m do
   read(f1,h[i]);
 for i := 1 to n do
  read(f1,b[i]);
 case m of
  1:writeln(f2,'1');
  2:double;
  3:triple
  else rekursivni_pizdec;
 end;
close(f1);
close(f2);
end.
