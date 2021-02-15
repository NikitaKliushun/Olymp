{ Командная олимпиада школьников Санкт-Петербурга 2000 года }
{ Задача: "Нечестная игра"                                  }
{ Автор: Георгий Корнеев                                    }
{ Проверяющая программа: Андрей Станкевич                   }

program check_f;

uses
  testlib, symbols;

function ending(x: longint): string;
begin
  x := x mod 100;
  if x div 10 = 1 then
    ending := 'th'
  else
    case x mod 10 of
      1: ending := 'st';
      2: ending := 'nd';
      3: ending := 'rd';
      else
        ending := 'th';
    end;
end;

var
  j, p, n: longint;

begin
  n := 0;
  while not ans.seekeof do
  begin
    inc(n);
    j := ans.readlongint;
    p := ouf.readlongint;

    if j <> p then
      quit(_wa, str(n, 0) + ending(n) + ' numbers differ - expected: "' + str(j, 0) + 
        '", found: "' + str(p, 0) + '"');
  end;
  if not ouf.seekeof then quit(_wa, 'too many');
  quit(_ok, str(n, 0) + ' numbers');
end.
