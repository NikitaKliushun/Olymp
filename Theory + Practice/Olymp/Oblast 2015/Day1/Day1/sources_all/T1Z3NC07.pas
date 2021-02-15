{Ломтев Даниил Андреевич Слуцк 11 №3}
var
 a, b : array [0..100000000] of boolean;
 n, m, k : longint;
 i, j, ii, jj : longint;
 buf : boolean;
 a_max, b_max, c_max, ab : longint;
procedure debug;
var
 i, j : longint;
begin
 writeln;
 for i := 1 to c_max do
  if (a[i] = true)
   then write('1 ')
   else if (a[i] = false)
    then write('0 ');
 writeln;
 for i := 1 to c_max do
  if (b[i] = true)
   then write('1 ')
   else if (b[i] = false)
    then write('0 ');
 writeln;
 {for i := 1 to c_max do
  if (c[i] = true)
   then write('1 ')
   else if (c[i] = false)
    then write('0 ');
 writeln;}
end;

procedure solve;
var
 i, j : longint;
 stop, now : boolean;
 stack : longint;
begin
 for i := 1 to c_max do
  begin
   {if ((a[i] = true) and (b[i] = true))
    then c[i] := false;
   if ((a[i] = false) and (b[i] = false))
    then c[i] := false;
   if ((a[i] = false) and (b[i] = true))
    then c[i] := true;
   if ((a[i] = true) and (b[i] = false))
    then c[i] := true;}
   a[i] := a[i] xor b[i];
  end;
 i := c_max;
 stop := false;
 while (stop = false) do
  begin
   if (a[i] = true)
    then stop := true;
   if (i = 1)
    then stop := true;
   if (stop = false)
    then dec(i);
  end;
 a_max := i;
 i := a_max;
 while (i > 0) do
  begin
   if (i = a_max)
    then begin
          now := a[i];
          stack := 1;
         end;
   if ((i <> a_max) and (a[i] = now))
    then begin
          inc(stack);
         end;
   if ((i <> a_max) and (a[i] <> now))
    then begin
          now := a[i];
          write(stack, ' ');
          stack := 1;
         end;
   if (i = 1)
    then begin
          now := a[i];
          write(stack, ' ');
          stack := 1;
         end;
   dec(i);
  end;
end;

procedure print;
var
 i, j : longint;
begin

end;

BEGIN
 assign(input, 'input.txt');
 assign(output, 'output.txt');
 reset(input);
 rewrite(output);

 for i := 1 to 100000 do
  a[i] := false;
 for i := 1 to 100000 do
  b[i] := false;
 readln(n, m);
 i := 0;
 jj := 0;
 while (i < n) do
  begin
   inc(i);
   read(j);
   for ii := jj + 1 to jj + j do
    if (i mod 2 = 0)
     then a[ii] := false
     else a[ii] := true;
   jj := jj + j;
   a_max := jj;
  end;
 for i := 1 to (a_max div 2) do
  begin
   buf := a[i];
   a[i] := a[a_max - i + 1];
   a[a_max - i + 1] := buf;
  end;
 i := 0;
 jj := 0;
 while (i < m) do
  begin
   inc(i);
   read(j);
   for ii := jj + 1 to jj + j do
    if (i mod 2 = 0)
     then b[ii] := false
     else b[ii] := true;
   jj := jj + j;
   b_max := jj;
  end;
  for i := 1 to (b_max div 2) do
  begin
   buf := b[i];
   b[i] := b[b_max - i + 1];
   b[b_max - i + 1] := buf;
  end;
 if (a_max > b_max)
  then c_max := a_max
  else c_max := b_max;

 //debug;
 solve;
 print;
 //debug;
 close(input);
 close(output);
END.
