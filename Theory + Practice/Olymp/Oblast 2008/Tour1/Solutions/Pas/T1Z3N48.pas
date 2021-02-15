{Алифанов Александр, 9', Борисов}
program T1Z3N48;
  var
    a, b, c : array[ 1..10000 ] of int64;
    i, j, e : longint;
    n, m, kol, t : int64;
begin
  assign( input, 'input.txt' ); assign( output, 'output.txt' );
  reset( input ); rewrite( output );
  read( n, m );
  for i:= 1 to m do
    read( A[ i ] );
  for i:= 1 to n do begin
    b[ i ]:= i;
                    end;


  for i:= 1 to m do
    for j:= 1 to n do begin
      if a[ i ] = b[ j ]
        then begin
          t:= b[ j ];
          for e:= j downto 2 do
            b[ e ]:= b[ e-1 ];
          b[ 1 ]:= t;
          c[ i ]:= j; break;
             end;
                      end;

  for i:= 1 to m do
    write( c[ i ], ' ' );
  close( input ); close( output );
end.
