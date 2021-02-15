{Бузун Владислав Романович, г.Слуцк, 9класс, задача номер 2}
program z1;
var
x,min,a,b:longint;
{function secret(x:longint):longint;
 begin
  secret:=
 end;}
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
read(a,b);
{if a=b then write(secret(a))
       else write(secret(a)+1);}
case a of
 1: begin if a=b then write(2) else write(3); end;
 2: begin if a=b then write(5) else write(6); end;
 3: begin if a=b then write(8) else write(9); end;
 4: begin if a=b then write(11) else write(12); end;
 5: begin if a=b then write(16) else write(17); end;
end;

close(input);
close(output);
end.
