{��� �����᫠� ���������, �.����, 9 �����, ����� ����� 1}
program z2;
var
n:int64;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
read(n);
write(sqr(n));
close(input);
close(output);
end.
