uses
  testlib, sysutils;

var
  ja, pa: string;
  i: longint;

begin 
  ja := ans.readstring;
  pa := ouf.readstring;
  if (length(pa) <> length(ja)) then quit(_wa, 'Incorrect line length: ' + inttostr(length(ja)) + ' expected, ' + inttostr(length(pa)) + ' found');

  for i := 1 to length(pa) do begin
  	if (pa[i] <> ja[i]) then quit(_wa, 'At position ' + inttostr(i) + ': ' + ja[i] + ' expected, but ' + pa[i] + ' found');
  end;

  if not ouf.seekEof then quit(_wa, 'Extra lines! "' + ouf.readString + '" encountered' );
  quit( _ok, 'Ok' );
end.