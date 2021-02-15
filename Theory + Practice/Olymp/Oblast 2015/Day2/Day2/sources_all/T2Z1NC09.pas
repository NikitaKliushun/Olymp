Var
  t1,t2:text;
  s1,s2:string;
  d1,d2,n:longint;
  c1,c2:char;
Begin
  assign (t1,'input.txt'); reset (t1);
  assign (t2,'output.txt'); rewrite (t2);

  readln (t1,s1);
  readln (t1,s2);
  c1:=s1[ length(s1) ];
  c2:=s2[ length(s2) ];
  while (c1=c2) do
    Begin
      n:=n+1;
      c1:=s1[ length(s1)-n ];
      c2:=s2[ length(s2)-n ];
    end;
  write (t2,n);
  close (t1);
  close (t2);
end.

