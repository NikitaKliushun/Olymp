{ Алифанов Александр, 9', Борисов }
program T2Z1N48;
  var
    i, j : longint;
    a : array[ 1..100000 ] of int64;
    n, sum, kaz, t : int64;
begin
  assign( input, 'input.txt' ); assign( output, 'output.txt' );
  reset( input ); rewrite( output );
  read( n );
  for i:= 1 to n do
    read( A[ i ] );

  for i:= 1 to n do
    for j:= 2 to n do
      if a[ j ] > a[ j-1 ]
        then begin
          t:= a[ j ]; a[ j ]:= a[ j-1 ]; a[ j-1 ]:= t;
             end;

  for i:= 1 to n div 2 do
    sum:= sum+a[ i ];
  for i:= ( n div 2 )+1 to n do
    kaz:= kaz + a[ i ];
  writeln( sum-kaz );
  close( input ); close( output );
end.
