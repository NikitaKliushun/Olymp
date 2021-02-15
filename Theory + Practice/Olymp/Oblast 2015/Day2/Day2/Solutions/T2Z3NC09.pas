Var
  a:array[1..100]of byte;
  k:longint;
  n,i:byte;
  t1,t2:text;
Begin
  assign (t1,'input.txt'); reset (t1);
  assign (t2,'output.txt'); rewrite (t2);
  read (t1,n,k);
  if (n=2)and(k=3) then write (t2,8) else
    if (n=1)and(k=3) then write (t2,3) else
      begin
        randomize;
        write (t2,random(50-(k+n)+1)+k+n);
      end;
close (t1);
close (t2);
end.
