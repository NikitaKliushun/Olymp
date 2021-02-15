{Яковлев Вячеслав Александрович, г.Борисов, 9"А", 1}
Program T2Z1N201;
  Var a:array[1..2,1..1000]of longint;
      b:array[1..10000]of longint;
      s,t,n,k,i,p,j:longint;
      f,f1:text;
Begin
  s:=0;
  p:=0;
  assign(f,'input.txt');
  assign(f1,'output.txt');
  reset(f);
  rewrite(f1);
  read(f,n);
  read(f,k);
  For i:=1 to n do
  begin
    read(f,a[1,i]);
    read(f,a[2,i]);
    s:=s+a[1,i];
  end;
  t:=s;
  If s<k then
  begin
    i:=1;
    j:=1;
    While t<k do
    begin
      If a[1,i]=a[2,i] then
        inc(i)
      else
      begin
        inc(a[1,i]);
        inc(p);
        b[j]:=i;
        inc(t);
        inc(j);
      end;
    end;
  end;
  If s>k then
  begin
    i:=1;
    j:=1;
    While t>k do
    begin
      If a[1,i]=0 then
        inc(i)
      else
      begin
        dec(a[1,i]);
        inc(p);
        b[j]:=-i;
        dec(t);
        inc(j);
      end;
    end;
  end;
  If s=k then
    Write(f1,0)
  else
  begin
    Writeln(f1,p);
    For i:=1 to j-1 do
      Writeln(f1,b[i]);
  end;
  close(f);
  close(f1);
end.
