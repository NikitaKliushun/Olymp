{Алифанов Александр, 9', Борисов}
program T1Z2N48;
  var
    n, i, k, kol, j, t, sum : integer;
    a : array[ 1..51 ] of int64;
begin
  assign( input, 'input.txt' ); assign( output, 'output.txt' );
  reset( input ); rewrite( output );
  read( n, k );
  for i:= 1 to n do begin
    read( a[ i ] );
                    end;

  for i:= 1 to n do
    if a[ i ] >= k then kol:= kol + 1;

  for i:= 1 to n do
    for j:= i to n do
      if ( i<>j ) and ( a[ i ]+a[ j ] >= k )
        then begin
          kol:= kol + 1;
             end;

  for i:= 1 to n do
    for j:= 2 to n do
      if a[ j ] < a[ j - 1 ]
        then begin
          t:= a[ j ]; a[ j ]:= a[ j - 1 ]; a[ j - 1 ]:= t;
             end;
  i:= 0;
  while sum < kol do begin
    sum:= sum + kol; i:= i+1; if a[ i ] = a[ i + 1 ] then kol:= kol + 1;
                     end;
  if sum >= k then kol:= kol+1;
  writeln( kol );
  close( input ); close( output );
end.
