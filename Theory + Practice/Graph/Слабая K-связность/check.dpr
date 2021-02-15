{$O-,Q+,R+}
program macro;
uses testlib, SysUtils;
var jury, cont:extended;
begin
  jury:=ans.readreal;
  cont:=ouf.readreal;
  if int (jury)<>jury then quit (_fail, 'Not an integer: '+floattostr (jury));
  if int (cont)<>cont then quit (_pe, 'Not an integer: '+floattostr (cont));
  if not ouf.seekeof then quit (_pe, 'EOF expected');
  if jury<>cont then quit (_wa, format ('Required: %.0f, got: %.0f', [jury, cont]));
  quit (_ok, '');
end.