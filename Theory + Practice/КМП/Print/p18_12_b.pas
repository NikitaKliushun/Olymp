{$apptype console}
var
  prog:array[1..5005]of string[15];
  a,b:array[1..5500]of char;
  q,q3:array[0..5500]of longint;
  l1,l2,count:longint;

procedure OpenFiles;
begin
  assign(input,'print.in');
  assign(output,'print.out');
  reset(input);
  rewrite(output);
end;

procedure CloseFiles;
begin
  close(input);
  close(output);
end;

procedure Solve;
var
  i,k1:longint;
  c:char;
  s:string[10];

begin
  l1:=0;
  read(c);
  while (ord(c)>31) do
  begin
    inc(l1);
    a[l1]:=c;
    read(c);
  end;
  fillchar(b,sizeof(b),#30);
  l2:=0;
  while l2<l1 do
  begin
    q[0]:=0;
    q3[0]:=0;
    q3[1]:=0;
    for i:=2 to l2 do
    begin
      k1:=i-1;
      while (k1<>0)and(b[i]<>b[q3[k1]+1]) do
        k1:=q3[k1];
      if b[i]=b[q3[k1]+1] then
        q3[i]:=q3[k1]+1
      else
        q3[i]:=0;
    end;
    for i:=1 to l2 do
    begin
      k1:=i-1;
      while (b[i]<>a[q[k1]+1+l2])and(k1<>0)do
        k1:=q3[k1];
      if b[i]=a[q[k1]+1+l2] then
        q[i]:=q[k1]+1
      else
        q[i]:=0;
    end;
    if q[l2]=0 then
    begin
      inc(count);
      prog[count]:='Letter('''+a[l2+1]+''');';
      inc(l2);
      b[l2]:=a[l2];
    end
    else
    begin
      inc(count);
      str(q[l2],s);
      prog[count]:='Repeat('+s+');';
      for i:=1 to q[l2] do
        b[l2+i]:=a[l2+i];
      l2:=l2+q[l2];
    end;
  end;
  writeln(count+1);
  for i:=1 to count do
    writeln(prog[i]);
  writeln('End.');
end;

begin
  OpenFiles;
  Solve;
  CloseFiles;
end.
