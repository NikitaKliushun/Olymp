var n, m, kol, k : int64;
begin
  assign(input, 'input.txt');
  assign(output, 'output.txt');
  reset(input);
  rewrite(output);

    read(n); readln(m);
    k := (n div 2);
    if n mod 2 = 0
      then kol := ((k - 1)*k - k + 1) * n
      else kol := ((k - 1)*k)*n;

    writeln(kol);

  close(input);
  close(output);
end.