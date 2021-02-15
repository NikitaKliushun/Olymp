//трацевский алксей павлович, дзержинск,11 класс, задача
var

   a, b, c: array[0..300000] of qword;
   n, i1, m,  l: longint;
   i, j, k:  qword;
   a1, b1, c1: boolean;


//===================================================================================
//===================================================================================
//===================================================================================


procedure change( var x : boolean);
begin
if x = true then x := false else x := true;
end;
function min( a, b:qword):qword;
begin
  if a < b then min := a else min := b;
end;

//===================================================================================
//===================================================================================
//===================================================================================


begin

  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  fillchar(c, sizeof(c),0);



  read(n,m);
  for i1 := 1 to n do
    read(a[i1]);
  for i1 := 1 to m do
    read(b[i1]);

  a1 := false;
  b1 := false;

  if n mod 2 = 1 then a1 := true;
  if m mod 2 = 1 then b1 := true;
  c1 := a1 xor b1;

  i := a[n];
  j := b[m];
  l := 1;

  while not( ( n = 0 ) or  ( m = 0 )) do
  begin

          k := min( i, j);

          if c1 <> (a1 xor b1) then
          begin
            change(c1);
            inc(l);
          end;

          c[l] := c[l] + k;
          i := i - k;
          j := j - k;

          if i = 0 then
          begin

             dec(n);
             change(a1);
             i := a[n];

          end;

          if j = 0 then
          begin

             dec(m);
             change(b1);
             j := b[m];

          end;

  end;




if i >= j then j := i;

if j > 0 then
begin
  if not c1 then
  begin
            change(c1);
            inc(l);
  end;

  inc(c[l],j);



end;

for i1 := l downto 1 do
  write(c[i1], ' ');

//===================================================================================
//===================================================================================

close(input);
close(output);
end.
