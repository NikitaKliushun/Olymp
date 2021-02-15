{2 tur, 3 itap, 2016 god, Zalevski Aleksandr Aleksandrovich g. Dzerzhinsk, zadacha 1}
Var
  d:array[1..100000]of longint;
  m,w,s,b,t,n,i,j:longint;
  t1,t2:text;
Begin
  assign (t1,'input.txt'); reset (t1);
  assign (t2,'output.txt'); rewrite (t2);
  readln (t1,m,w);
  for i:=1 to m-1 do read (t1,d[i]); readln (t1,d[m]);
  read (t1,s,b,t);
  for j:=1 to m do
    for i:=1 to d[j] do
      Begin
      if (t=i)and(s mod w=b) then n:=n+1;
      s:=s+1;
      end;
  write (t2,n);
  close (t1);
  close (t2);
end.