{Яковлев Вячеслав Александрович, г.Борисов, 9"А", 2}
Program T2Z2N201;
  Var a:array[1..2,1..1000000]of longint;
      b:array[1..1000000]of longint;
      k,max1,n,i,j,max,s:longint;
      f,f1:text;
Procedure QSort(l,r:longint);
  Var x,i,j,t,t1:longint;
Begin
  i:=l;
  j:=r;
  x:=a[1,random(j-i)+i];
  repeat
    While a[1,i]<x do
      inc(i);
    While a[1,j]>x do
      dec(j);
    If i<=j then
    begin
      t:=a[1,i];
      t1:=a[2,i];
      a[1,i]:=a[1,j];
      a[2,i]:=a[2,j];
      a[1,j]:=t;
      a[2,j]:=t1;
      inc(i);
      dec(j);
    end;
  until i>j;
  If i<r then QSort(i,r);
  If l<j then QSort(l,j);
end;
Begin
  assign(f,'input.txt');
  assign(f1,'output.txt');
  reset(f);
  rewrite(f1);
  read(f,n);
  read(f,k);
  For i:=1 to n do
  begin
    read(f,a[1,i]);
    a[2,i]:=i;
  end;
  QSort(1,n);
  For i:=1 to n-1 do
    b[i]:=a[1,i+1]-a[1,i];
  max:=-1;
  max1:=0;
  For i:=1 to n-k+1 do
  begin
    s:=0;
    For j:=i to i+k-2 do
    begin
      s:=s+b[j];
    end;
    If max=-1 then
    begin
      max:=s;
      max1:=i;
    end
    else
      If max>s then
      begin
        max:=s;
        max1:=i;
      end;
  end;
  Writeln(f1,k);
  For i:=1 to k do
  begin
    Write(f1,a[2,max1+i-1],' ');
  end;
  close(f);
  close(f1);
end.
