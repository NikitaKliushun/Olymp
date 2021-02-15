{Янович Евгений Сергеевич, г.Слуцк, 10, 3}
var
a:array[0..9,0..9] of byte;
i,j,k,s,n:byte;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,k);
readln(f1,i);



a[1,7]:=2;
a[7,1]:=2;
a[2,3]:=2;
a[2,4]:=2;
a[3,2]:=2;
a[3,4]:=2;
a[4,2]:=2;
a[4,3]:=2;
a[5,6]:=2;
a[5,9]:=2;
a[6,5]:=2;
a[6,9]:=2;
a[9,5]:=2;
a[9,6]:=2;
s:=1;
for j:=0 to 9 do
 if (a[i,j]<=k) and (a[i,j]<>0)
  then s:=s+1;







writeln(f2,s);
close(f1);
close(f2);
end.
