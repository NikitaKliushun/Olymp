//Задача № 1, Лебедев Даниил Петрович, г. Борисов, 8 класс
program z1;
var
  c: char;
  s, t: ansistring;
  i, j, r: longint;
  f1, f2: text;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  readln(f1, s);
  readln(f1, t);

  i:=Length(s);
  j:=Length(t);
  r:=0;
  if s=t
  then begin
         Write(f2, length(s));
         close(f1); close(f2);
         halt;
       end;
  while (i>=1) and (j>=1) do
  begin
    if s[i]=t[j]
    then begin
           inc(r);
           dec(i); dec(j);
         end
    else break;
  end;

  write(f2, r);

  close(f1);
  close(f2);
end.