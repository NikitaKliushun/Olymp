{���㭥檨� ���ᨬ ���⮫쥢��, �.������, 8 �����, 2 �����}
{���������� ������ �����������, �. �������, 8 �����, 2 ������}
program T1Z2N208;
var
  fread,fwrite:text;
  a,b,c,k:int64;
  i:longint;
begin
  assign(fread,'input.txt');
  assign(fwrite,'output.txt');
  reset(fread);
  rewrite(fwrite);

  read(fread,a,c);
  k:=1;
  if c > a then
    for i:=1 to c div 2 do
      if (c mod i = 0) and (i mod a = 0) then
        k:=k+1;
  write(fwrite,k);

  close(fwrite);
  close(fread);
end.
