//���客 �.�. ��������. 2 誮��. 1 ���. 4 �����. ����� ���⭨�� �16
program zadachka3;
var a:array[1..100] of byte;
    n,k:byte;

begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,k);
write(-1);
close(output);
close(input);
end.
