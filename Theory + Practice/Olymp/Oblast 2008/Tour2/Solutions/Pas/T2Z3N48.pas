program z1;
  var
    i, j, e, n, metk, kol, m : longint;
    x, y : array[ 1..100000 ] of int64;
    b : boolean;
begin
  assign( input, 'input.txt' ); assign( output, 'output.txt' );
  reset( input ); rewrite( output );
  read( n, m );
  for i:= 1 to m do
    read( x[ i ], y[ i ] );

  for i:= 1 to n do
    for j:= 1 to n do
      if i<>j then begin
        b:= true;
        for e:= 1 to n do
          if ( ( x[ e ] = i ) and ( y[ e ] = j ) )
          or ( ( x[ e ] = j ) and ( y[ e ] = i ) )
            then b:= false;
        if not b then break;
        metk:= i;
        for e:= 1 to m do
        if ( x[ e ] = metk ) and (e<>metk)
          then begin kol:= kol+1; metk:= e; end
          else
            if  ( y[ e ] = metk ) and (i<>metk)
              then begin kol:= kol+1; metk:= e; end;
                 end;
  writeln( kol );
  close( input ); close( output );
end.


