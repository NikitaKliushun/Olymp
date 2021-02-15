//Бузун Владислав Романович, г.Слуцк, 10 класс, №1
program z1;
var
n,y,x1,a,i,j:integer;
z,c,x,b,y2:char;
s:string;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
for i:=1 to 10 do
 begin
 for j:=1 to 10 do
  begin
   read(x);
   if x='#' then begin x1:=i; y:=j; end;
  end;
  readln;
  end;
case y of
1:y2:='a';
2:y2:='b';
3:y2:='c';
4:y2:='d';
5:y2:='e';
6:y2:='f';
7:y2:='g';
8:y2:='h';
9:y2:='i';
10:y2:='k';
end;
z:=chr(48+x1);
readln;

readln(n);
for i:=1 to n do
 begin
  readln(s);
 // if (a=x1)and(b=y2) then write('GAME OVER') else write('MISS');
 if (pos(y2,s)<>0)and(pos(z,s)<>0) then write('GAME OVER') else write('MISS');
 end;
close(input);
close(output);
end.
