Var
s:array[1..10]of string[10];
b:string[4];
a,k,c,p,z,i,j,o:byte;
code:integer;
Function tr(x,y:byte):byte;
begin
s[a][c]:='.';
For x:=1 to 10 do
For y:=1 to 10 do
if s[x][y]='#'
then z:=z+1;
if z=0
then tr:=4
else tr:=2;
end;
Function fal(x1,y1:byte):byte;
begin
s[a][c]:='.';
fal:=1;
end;
Begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
For i:=1 to 10 do
Readln(s[i]);
Readln(k);
For i:=1 to k do
begin
Readln(b);
if length(b)<4
then begin
     val(b[1],a,code);
     delete(b,1,2);
     end
else begin
     a:=10;
     delete(b,1,3);
     end;
if b='a'
then c:=1;
if b='b'
then c:=2;
if b='c'
then c:=3;
if b='d'
then c:=4;
if b='e'
then c:=5;
if b='f'
then c:=6;
if b='g'
then c:=7;
if b='h'
then c:=8;
if b='i'
then c:=9;
if b='k'
then c:=10;
if s[a][c]='#'
then if a=1
     then if c=10
          then if (s[a+1][c]='.')and(s[a][c-1]='.')
               then p:=tr(o,j)
               else p:=fal(a,c)
          else if c=1
               then if (s[a+1][c]='.')and(s[a][c+1]='.')
                    then p:=tr(o,j)
                    else p:=fal(a,c)
               else if (s[a+1][c]='.')and(s[a][c-1]='.')and(s[a][c+1]='.')
                    then p:=tr(o,j)
                    else p:=fal(a,c)
     else a:=a
else a:=a;     
if s[a][c]='#'
then if a=10
     then if c=10
          then if (s[a-1][c]='.')and(s[a][c-1]='.')
               then p:=tr(o,j)
               else p:=fal(a,c)
          else if c=1
               then if (s[a-1][c]='.')and(s[a][c+1]='.')
                    then p:=tr(o,j)
                    else p:=fal(a,c)
               else if (s[a-1][c]='.')and(s[a][c-1]='.')and(s[a][c+1]='.')
                    then p:=tr(o,j)
                    else p:=fal(a,c)
     else if c=10
          then if (s[a+1][c]='.')and(s[a][c-1]='.')and(s[a-1][c]='.')
               then p:=tr(o,j)
               else p:=fal(a,c)
          else if c=1
               then if (s[a+1][c]='.')and(s[a][c+1]='.')and(s[a-1][c]='.')
                    then p:=tr(o,j)
                    else p:=fal(a,c)
               else if (s[a+1][c]='.')and(s[a][c-1]='.')and(s[a][c+1]='.')and(s[a-1][c]='.')
                    then p:=tr(o,j)
                    else p:=fal(a,c)
else if p<>4
     then p:=3;
if p=1
then Writeln('HIT');
if p=2
then Writeln('DEAD');
if p=3
then Writeln('MISS');
z:=0;
end;
if p=4
then Writeln('GAME OVER');
Close(input);
Close(output);
End.






