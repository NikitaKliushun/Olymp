//Головащенко, МГОЛ ЗД_3
var
  n,m: longint;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  read(n,m);
    if n< 100 then
      write('0')
    else
      write(m mod n);

  close(input);
  close(output);

end.
