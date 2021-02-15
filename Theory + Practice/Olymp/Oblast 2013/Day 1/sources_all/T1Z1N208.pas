{Медунецкий Максим Анатольевич, г.Логойск, 8 класс, 1 задача}
{╠хфєэхЎъшщ ╠ръёшь └эрЄюы№хтшў, у. ╦юующёъ, 8 ъырёё, 1 чрфрўр}
program T1Z1N208;
var
  fread,fwrite:text;
  hh,mm,ss:byte;
  n,i,j,k,cod,zh1,zh2,zm1,zm2,zs1,zs2:integer;
  t:word;
  s,f:array [1..1000] of integer;
  q:array [1..2000] of longint;
  st:array [1..1000] of string;
begin
  assign(fread,'input.txt');
  assign(fwrite,'output.txt');
  reset(fread);
  rewrite(fwrite);

  hh:=1;
  mm:=2;
  ss:=3;
  k:=0;
  readln(fread,n,t);
  for i:=1 to 2*n do
    readln(fread,st[i]);
  for i:=1 to n*2 do
  begin
    val(st[i][1],zh1,cod);
    val(st[i][2],zh2,cod);
    val(st[i][4],zm1,cod);
    val(st[i][5],zm2,cod);
    val(st[i][7],zs1,cod);
    val(st[i][8],zs2,cod);
    q[i]:=(zh1*10+zh2)*60*60+(zm1*10+zm2)*60+(zs1*10+zs2);
  end;
  for i:=1 to n*2 do
    for j:=1 to n*2 do
      if q[i]+t = q[j] then
      begin
        k:=k+1;
        s[k]:=i;
        f[k]:=j;
        q[i]:=-1;
        q[j]:=-1;
      end;
  for i:=1 to k do
    writeln(fwrite,st[s[i]],'-',st[f[i]]);

  close(fwrite);
  close(fread);
end.
