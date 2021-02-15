{Медунецкий Максим Анатольевич, г.Логойск, 8 класс, 1 задача}
{╠хфєэхЎъшщ ╠ръёшь └эрЄюы№хтшў, у.╦юующёъ, 8 ъырёё, 1 чрфрўр}
program T2Z1N208;
var
  fread,fwrite:text;
  N:byte;
  K,i,j,wsp,M:integer;
  S:longint;
  a,p,o:array [1..100] of integer;
begin
  assign(fread,'input.txt');
  assign(fwrite,'output.txt');
  reset(fread);
  rewrite(fwrite);

  readln(fread,N,K);
  for i:=1 to N do
    readln(fread,a[i],p[i]);
  {for i:=1 to N-1 do
    for j:=1 to N-i do
      if a[j] < a[j+1] then
      begin
        wsp:=a[j];
        a[j]:=a[j+1];
        a[j+1]:=wsp;

        wsp:=p[j];
        p[j]:=p[j+1];
        p[j+1]:=wsp;

        wsp:=x[j];
        x[j]:=x[j+1];
        x[j+1]:=wsp;
      end;}
  M:=0; S:=0;
  for i:=1 to N do
    S:=S+a[i];
  i:=1;
  if S < K then
  begin
    while S < K do
    begin
      if a[i] < p[i] then
      begin
        M:=M+1;
        o[m]:=i;
        a[i]:=a[i]+1;
        s:=s+1;
      end
      else
        i:=i+1;
    end;
  end;
  if S > K then
  begin
    while S > K do
    begin
      if a[i] > 0 then
      begin
        m:=m+1;
        o[m]:=i*(-1);
        a[i]:=a[i]-1;
        s:=s-1;
      end
      else
        i:=i+1;
    end;
  end;
  writeln(fwrite,m);
  for i:=1 to m do
    writeln(fwrite,o[i]);

  close(fwrite);
  close(fread);
end.
