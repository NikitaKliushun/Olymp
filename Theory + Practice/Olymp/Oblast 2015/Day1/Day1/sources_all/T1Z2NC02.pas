//Задача № 2, Лебедев Даниил Петрович, г. Борисов, 8 класс
program z2;
var
  k, a, b, u: uint64;
  I, J: longint;
  f1, f2: text;
function Min(a,b: longint):longint;
begin
  if a<b then Min:=a else Min:=b;
end;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  read(f1, a, b);

  if (a=b) or (a=b+1) or (b=a+1)
  then k:=a+b
  else k:=2*min(a,b)+1;

  if (a=1) or (b=1)
  then begin
         write(f2,k);
         close(f1); close(f2);
         halt;
       end;

  u:=min(a,b);
  for i:=2 to u do
    for j:=i to u do
      if (i mod 2 = 0) or (j mod 2 = 0)
      then if ((i*j div 2<=a) and (i*j div 2<=b))
           then inc(k)
      else if ((i*j div 2<=a) and (i*j div 2+1<=b)) or
              ((i*j div 2+1<=a) and (i*j div 2<=b))
           then inc(k);

  write(f2, k);

  close(f1);
  close(f2);
end.
