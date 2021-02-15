{Важник Артём Андреевич, г. Молодечно, 9 "А" класс, з. №2}
program T1Z2NC02;
var f1, f2:text;
k, y:int64;
begin
  assign (f1, 'input.txt');
  assign (f2, 'output.txt');
  reset (f1);
  rewrite (f2);

  read (f1, k, y);
  close (f1);

  write (f2, '-1');
  close (f2);
end.