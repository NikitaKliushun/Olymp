var
  a,b,c,ans,t:int64;
Begin
  Assign(input,'input.txt');
  reset(input);
  Assign(output,'output.txt');
  rewrite(output);
  Readln(a,c);
  t:=a;
  b:=a;
  ans:=1;
  while b<=(c div 2)  do
    begin
      if (b mod a =0) and (c mod b =0 )
        then inc(ans);
      b:=b+t;
    end;
  writeln(ans);
  Close(input);
  close(output);
End.