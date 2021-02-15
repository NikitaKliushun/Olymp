var a,c:int64;
    i,d:integer;
begin                           {
  assign (input,'input.txt' );
  reset(input);
  assign(output,'output.txt' );
  rewrite(output);               }
  d:=0;
  readln(a,c);
  for i:=a to c do
  if (c mod i =0) and (i mod a = 0) then d:=d+1;
  writeln(d);
  close(input);
  close(output);
end.
