//Задача № 2, Лебедев Даниил Петрович, г. Борисов, 8 класс
program z2;
var
  d, r, i, j: longint;
  min, i0, k: uint64;
  f1, f2: text;
function Prost(i: longint): boolean;
var
  k: longint;
  p: boolean;
begin
  if i=1 then begin Prost:=false; exit; end;
  for k:=2 to Trunc(sqrt(i)) do
    if i mod k = 0
    then begin Prost:=false; exit; end;
  Prost:=true;
end;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);
  read(f1, d);
  min:=0;
  r:=round(exp((1/3)*ln(d)));
  if d=r*r*r
  then min:=1
  else if frac(sqrt(d))=0
       then min:=trunc(sqrt(d))
       else if prost(d)
              then min:=sqr(d)
              else for i:=1 to d div 2 do
                   begin
                     i0:=i;
                     if Sqr(i0)*i0 mod d = 0
                     then begin
                            min:=sqr(i0)*i0 div d;
                            break;
                          end;
                   end;
  write(f2, min);

  close(f1);
  close(f2);
end.
