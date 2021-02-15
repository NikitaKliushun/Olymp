{Сазанович Никита Валерьевич, г.Столбцы, 9 класс, тур 2, задача 2}
var
    a,p:array[1..1000000] of longint; n,k,m,i,l,r:longint;


procedure inputdata;
var i:longint;
begin
  assign(input,'input.txt'); reset(input);
  readln(n,k);
  for i:=1 to n do
    begin
      read(a[i]);
      p[i]:=i;
    end;
  close(input);
end;


procedure quicksort(l,r:longint);
var i,j,d,tmp:longint;
begin
  i:=l; j:=r; d:=a[random(r-l+1)+l];
  while i<=j do
    begin
      while a[i]<d do inc(i);
      while a[j]>d do dec(j);
      if i<=j then
        begin
          tmp:=a[i]; a[i]:=a[j]; a[j]:=tmp;
          tmp:=p[i]; p[i]:=p[j]; p[j]:=tmp;
          inc(i); dec(j);
        end;
    end;
  if i<r then quicksort(i,r);
  if l<j then quicksort(l,j);
end;


procedure outputdata;
var i:longint;
begin
  assign(output,'output.txt'); rewrite(output);
  writeln(k);
  for i:=l to r do write(p[i],' ');
  close(output);
end;


begin

  inputdata; m:=maxlongint;
  randomize; quicksort(1,n);
  for i:=1 to n-k+1 do
    if a[i+k-1]-a[i]<m then
    begin
      m:=a[i+k-1]-a[i];
      l:=i; r:=i+k-1;
    end;
  outputdata;

end.
