// Домбровский Владислав Сергеевич
program T2Z1NB10;
  var
    d:array[1..100000]of integer;
    m,c,z,w,s,b,t,k,i,j:integer;

    f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);
  read(f1,m,w);
  z:=1;
  k:=0;
  for i:=1 to m do
    read(f1,d[i]);
  read(f1,s,b,t);
  for j:=1 to m do
    for c:=1 to d[j] do
      begin
        if s=w then s :=0;
        inc(s);
        if z=d[j]
        then begin
               z:=0;inc(i);
             end;
        inc(z);
        if (s=b) and (z=t)
        then inc(k);
      end;
  write(f2,k);
  close(f1);
  close(f2);
  end.

