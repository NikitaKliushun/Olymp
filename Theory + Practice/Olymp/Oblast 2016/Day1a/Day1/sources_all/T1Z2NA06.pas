{Pivovarevich Vitaly Igorevich}
Program T1Z2NA06;
Var f1,f2:text;
i:integer;
Begin
  ASssign(f1,'input.txt');
  Reset(f1):
  Readln(f1,i);
  Close(f1);
  Assign(f2,'output.txt');
  Rewrite(f2);
  If (i=3) then writeln(f2,1,' ',3,' ',2)
  Else writeln(f2,-1);
  Close(f2);
end.
