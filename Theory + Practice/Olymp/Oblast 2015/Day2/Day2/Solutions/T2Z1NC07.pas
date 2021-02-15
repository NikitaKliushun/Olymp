{‹®¬â¥¢ „ ­¨¨« ‘«ãæª 11 ü1}
var
 s, t : array [1..100000] of char;
 n, m, i, j, r : longint;
 rythm : boolean;
procedure debug;
var
 i, j : longint;
begin
 for i := 1 to n do
  write(s[i]);
 writeln;
 for j := 1 to m do
  write(t[j]);
 writeln;
 writeln(n, ' ', m)
end;

procedure solve;
var
 i, j : longint;
begin
 r := 0;
 rythm := true;
 i := n;
 j := m;
 while rythm = true do
  begin
   //writeln(i, ' ', j);
   if ((i <= 0)  or  (j <= 0))
    then rythm := false;
   if (rythm = true)
    then if (s[i] <> t[j])
          then rythm := false;
   if (rythm = true)
    then if (s[i] = t[j])
          then begin
                inc(r);
                dec(i);
                dec(j);
               end;
  end;
end;

begin

 assign(input, 'input.txt');
 assign(output, 'output.txt');
 reset(input);
 rewrite(output);

 n := 0;
 while not eoln do
  begin
   inc(n);
   read(s[n]);
  end;
 readln;
 m := 0;
 while not eoln do
  begin
   inc(m);
   read(t[m]);
  end;

 solve;
 //debug;

 writeln(r);
end.