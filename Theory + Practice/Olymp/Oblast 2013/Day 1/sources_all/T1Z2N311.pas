Program z2;
Var f1,f2:text;
    a,b,c,i:int64;
Begin
 assign(f1,'input.txt');
 reset(f1);
 readln(f1,a,c);
 for i:=1 to c do
  begin
   if (i mod a=0) and (c mod i=0)
    then inc(b);
  end;
 assign(f2,'output.txt');
 rewrite(f2);
 writeln(f2,b);
 close(f1);
 close(f2);
end.
