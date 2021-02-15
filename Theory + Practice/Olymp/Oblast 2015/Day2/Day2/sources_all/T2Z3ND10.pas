{Бузун Владислав Романович, г.Слуцк, 9 класс, задача номер 1}
program z1;
var
a,b,c:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(a,b);
read(c);
case c of
1:begin if b>=3 then write(2) else write(1); end;
2:begin if b>=3 then write(3) else if b>=2 then write(2) else write(1); end;
3:begin if b>=2 then write(3) else write(1); end;
4:begin if b>=3 then write(3) else if b>=2 then write(2) else write(1); end;
5:begin if b>=2 then write(3) else write(1); end;
6:begin if b>=4 then write(3) else if b>=2 then write(2) else write(1); end;
7:begin if b>=3 then write(2) else write(1); end;
8:begin write(1); end;
9:begin if b>=4 then write(3) else if b>=2 then write(2) else write(1); end;
end;
close(input);
close(output);
end.
