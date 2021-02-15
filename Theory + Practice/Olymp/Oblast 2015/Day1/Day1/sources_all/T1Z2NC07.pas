{Ломтев Даниил Андреевич Слуцк 11 №2}
var
 a, b, n, m, i, j : longint;
 k : int64;
begin
 assign(input, 'input.txt');
 assign(output, 'output.txt');
 reset(input);
 rewrite(output);

 readln(a, b);
 if (a > b)
  then n := 2*b + 1
  else if (b > a)
         then n := 2*a + 1
         else if (a = b)
               then n := 2*a;
 for i := 1 to n do
  for j := 1 to i do
   if ((i*j div 2 <= a) and (i*j - (i*j div 2) <= b) or (i*j div 2 <= b) and (i*j - (i*j div 2) <= a))
    then inc(k);
 writeln(k);
 close(input);
 close(output);
end.