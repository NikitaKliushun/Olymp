{���㭥檨� ���ᨬ ���⮫쥢��, �.������, 8 �����, 4 �����}
{���������� ������ �����������, �. �������, 8 �����, 4 ������}
program T1Z4N208;
var
  fread,fwrite:text;
  N,M,K,F,i,j,mK,poz:longint;
  vs:boolean;
  a,c:array [1..200000] of longint;
begin
  assign(fread,'input.txt');
  assign(fwrite,'output.txt');
  reset(fread);
  rewrite(fwrite);

  read(fread,n,m,k);
  for i:=1 to m do
    read(fread,a[i]);
  for i:=1 to n do
    read(fread,c[i]);
  read(fread,F);
  mK:=1;
  for i:=1 to m do
  begin
    poz:=a[i];
    for j:=1 to k do
    begin
      poz:=c[poz];
      if poz=f then
        if mK < j then
          mK:=j;
      end;
  end;
  write(fwrite,mK);

  close(fwrite);
  close(fread);
end.
