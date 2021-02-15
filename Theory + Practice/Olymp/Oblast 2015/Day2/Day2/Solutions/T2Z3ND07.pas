program n3;
var
a:array[0..9,0..9] of byte;
i,j,n,ot,f,k:longint;
Begin
{Масаковский Дмитрий Владимирович, г.Слуцк, 9класс, задача 3}
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(f,k,n);
ot:=1;
fillchar(a,sizeof(a),0);
a[2,3]:=2; a[3,2]:=2;
a[2,4]:=3; a[4,2]:=3;
a[3,4]:=2; a[4,3]:=2;
a[1,7]:=2; a[7,1]:=2;
a[5,6]:=2; a[6,5]:=2;
a[5,9]:=2; a[9,5]:=2;
a[6,9]:=4; a[9,6]:=4;

for i:=0 to 9 do
 if (a[i,n]<=k)and(a[i,n]<>0) then inc(ot);
write(ot);
close(input);
close(output);
end.
