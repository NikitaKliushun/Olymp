{Яковлев Вячеслав Александрович, г.Борисов, 9 "А", 4}
Program T2Z4N201;
  Var n,m,k,fin,i,s,t:longint;
      a:array[1..200000]of longint;
      b:array[1..200000]of longint;
      c:array[1..200000]of longint;
      f,f1:text;
Begin
  s:=0;
  assign(f,'input.txt');
  assign(f1,'output.txt');
  reset(f);
  rewrite(f1);
  read(f,n);
  read(f,m);
  read(f,k);
  For i:=1 to m do
    read(f,a[i]);
  For i:=1 to n do
    read(f,b[i]);
  read(f,fin);
  fillchar(c,sizeof(c),0);
  For i:=1 to m do
  begin
    t:=a[i];
    While (c[t]<k)and(b[t]<>fin)do
    begin
      inc(c[t]);
      t:=b[t];
    end;
    If (c[t]<k)and(b[t]=fin)then
    begin
      inc(s);
      inc(c[t]);
    end;
  end;
  Write(f1,s);
  close(f);
  close(f1);
end.
