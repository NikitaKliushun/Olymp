{2 tur, 3 itap, 2016 god, Zalevski Aleksandr Aleksandrovich g. Dzerzhinsk, zadacha 1}
Var
  m,n,k,i,j,min:longint;
  h,b,p:array[1..3001]of longint;
  t1,t2:text;
  x:byte;
Begin
  assign (t1,'input.txt'); reset (t1);
  assign (t2,'output.txt'); rewrite (t2);
  readln (t1,m,n);
  for i:=1 to m-1 do read (t1,h[i]); readln (t1,h[m]);
  for j:=1 to n do read (t1,b[j]);
        {dla pervogo samyj nizkij blok}
  min:=1000000001;
  for j:=1 to n do
    if b[j]<min
      then
      Begin
        min:=b[j];
        k:=j;
      end;
  p[1]:=k;
  h[1]:=h[1]+min;
  b[k]:=1000000001;
        {dla ostalnyh soglasno usloviju}
  for i:=2 to m do
  Begin
    min:=1000000001;
    for j:=1 to n do
      if (b[j]<min)and( h[i-1] < (b[j]+h[i]) )
        then
        Begin
          min:=b[j];
          k:=j;
        end;
    if min=1000000001
      then
      Begin
        x:=1;
        break;
      end
      else
      Begin
        p[i]:=k;
        h[i]:=h[i]+min;
        b[k]:=1000000001;
      end;
    end;
  if x=1
    then
      write (t2,'-1')
    else
      for i:=1 to m do write (t2,p[i],' ');
  close (t1);
  close (t2);
end.
