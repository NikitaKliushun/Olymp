{Алифанов Александр, 9', Борисов}
program T1Z1N48;
  var
    i, j : longint;
    k, i1, j1, min : int64;
begin
  assign( input, 'input.txt' ); assign( output, 'output.txt' );
  reset( input ); rewrite( output );

  readln( k );
  min:= abs( 1-1 ) + ( k - 1*1 ); i1:= 1; j1:= 1;
  for i:= 1 to k do
    for j:= 1 to (k div i) do
      if ( abs( i-j ) + ( k - i*j ) ) < min
        then begin min:= abs( i-j ) + ( k - i*j ); i1:= i; j1:= j; end;

  writeln( i1, ' ', j1 );
  close( input ); close( output );
end.