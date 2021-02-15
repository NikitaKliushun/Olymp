{$apptype console}
uses testlib;
const
  maxn = 10000;
  LLetter = 11;
  LRepeat = 9;
var
  l, n, c, i, b, j : integer;
  v, code : longint;
  outp, answ : array[1..maxn] of char;
  s : string;
  seenend : boolean;
  good : boolean;
begin
  n := 0;
  while not (inf.eof or inf.eoln) do begin
    inc(n);
    answ[n] := inf.nextchar;
  end;
  b := ans.readinteger;
  l := ouf.readinteger;
  ouf.skip([' ', #13, #10]);
  c := 0;
  seenend := false;
  for i := 1 to l do begin
    s := ouf.readstring;
    while s[length(s)] = ' ' do delete(s, length(s), 1);
    if length(s) = 0 then quit(_PE, 'Пустая строка в выходном файле');
    if s[1] = 'L' then begin
      if s[length(s)] <> ';' then quit(_PE, 'Отсутствует ";"');
      delete(s, length(s), 1);
      if length(s) <> LLetter then quit(_PE, 'Неизвестная команда');
      if copy(s, 1, 8) <> 'Letter(''' then quit(_PE, 'Неизвестная команда');
      if copy(s, 10, 2) <> ''')' then quit(_PE, 'Неизвестная команда');
      inc(c);
      if c > n then quit(_WA, 'Получилась слишком длинная строка');
      outp[c] := s[9];
    end else if s[1] = 'R' then begin
      if s[length(s)] <> ';' then quit(_PE, 'Отсутствует ";"');
      delete(s, length(s), 1);
      if length(s) < LRepeat then quit(_PE, 'Неизвестная команда');
      if copy(s, 1, 7) <> 'Repeat(' then quit(_PE, 'Неизвестная команда');
      if s[length(s)] <> ')' then quit(_PE, 'Неизвестная команда');
      delete(s, 1, 7);
      delete(s, length(s), 1);
      val(s, v, code);
      if code <> 0 then quit(_PE, 'Неверный аргумент команды Repeat');
      if (v > c) or (v < 1) then quit(_PE, 'Неверный аргумент команды Repeat');
      if c + v > n then quit(_WA, 'Получилась слишком длинная строка');
      for j := 1 to v do outp[c+j] := outp[c-v+j];
      c := c + v;
    end else begin
      if s[length(s)] <> '.' then quit(_PE, 'Отсутствует ";"');
      delete(s, length(s), 1);
      if length(s) < 3 then quit(_PE, 'Неизвестная команда');
      if s <> 'End' then quit(_PE, 'Неизвестная команда');
      if i <> l then quit(_PE, 'Неожиданный конец программы');
      seenend := true;
    end;
  end;
  if not seenend then quit(_PE, 'Не найдена команда окончания печати');
  if n <> c then quit(_WA, 'Неверная длина строки');
  good := true;
  for i := 1 to n do if answ[i] <> outp[i] then begin
    good := false;
    break;
  end;
  str(i, s);
  if not good then quit(_WA, 'Ошибка в строке: '+s+' символ');
  if l > b then quit(_WA, 'Не оптимально');
  if l < b then quit(_Fail, 'Ошибка жюри???');
  quit(_OK, '');
end.