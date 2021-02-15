{Медунецкий Максим Анатольевич, г.Логойск, 8 класс, 3 задача}
{╠хфєэхЎъшщ ╠ръёшь └эрЄюы№хтшў, у.╦юующёъ, 8 ъырёё, 3 чрфрўр}
program T2Z3N208;
var
  fread,fwrite:text;
  x,y:byte;
  N,M,i,j,sum,d:longint;
  c:array [1..100000,1..2] of integer;

begin
  assign(fread,'input.txt');
  assign(fwrite,'output.txt');
  reset(fread);
  rewrite(fwrite);

  x:=1; y:=2;
  readln(fread,n,m);
  for i:=1 to m do
    readln(fread,c[i,x],c[i,y]);
  sum:=0;
  for i:=1 to n do
    for j:=i to n do
      if (i+j)mod 2=1 then
        sum:=sum+1;
  d:=sum-m;
  if d < 0 then d:=0;
  writeln(fwrite,d);

  close(fwrite);
  close(fread);
end.
