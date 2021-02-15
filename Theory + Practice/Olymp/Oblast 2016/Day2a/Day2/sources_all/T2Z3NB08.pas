{Макаревич Тарас Сергеевич, Молодечно, 11 класс, задача 3}
program T2Z3NB08;

var
  f1, f2 : text;
  i, j, n, k, res : longint;
  num, len : array[1..100000] of longint;

begin
  assign(f1, 'input.txt');
  assign(f2, 'output.txt');
  reset(f1);
  rewrite(f2);


  read(f1, n, k);
  res:=0;
  fillchar(len, 100000, 0);
  for i:=1 to n do
    read(f1, num[i]);
  for i:=1 to n do
    for j:=i - 1 downto 1 do
      if (num[i] > num[j]) and (len[j] + 1 > len[i])
         then len[i]:=len[j] + 1;
  for i:=1 to n do
    if len[i] > res
       then res:=len[i];
  write(f2, res + 1);



  close(f1);
  close(f2);
end.
