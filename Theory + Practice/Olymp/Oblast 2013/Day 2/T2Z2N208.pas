{Медунецкий Максим Анатольевич, г.Логойск, 8 класс, 2 задача}
{╠хфєэхЎъшщ ╠ръёшь └эрЄюы№хтшў, у.╦юующёъ, 8 ъырёё, 2 чрфрўр}
program T2Z2N208;
var
  fread,fwrite:text;
  N,K,U,i,j,pN,tN,min,max:longint;
  D,Z:array [1..100000] of longint;

procedure qsort(var a,z:array of longint; low,high:longint);
var i,j,m,wsp:longint;
begin
  i:=low; j:=high;
  m:=a[(i+j) div 2];
  repeat
    while a[i]<m do i:=i+1;
    while a[j]>m do j:=j-1;
    if i<=j then
    begin
      wsp:=a[i];
      a[i]:=a[j];
      a[j]:=wsp;

      wsp:=z[i];
      z[i]:=z[j];
      z[j]:=wsp;

      i:=i+1;
      j:=j-1;
    end;
  until i > j;
  if i < high then qsort(a,z,i,high);
  if j < low then qsort(a,z,low,j);
end;

begin
  assign(fread,'input.txt');
  assign(fwrite,'output.txt');
  reset(fread);
  rewrite(fwrite);

  readln(fread,n,k);
  for i:=1 to n do
  begin
    read(fread,d[i]);
    z[i]:=i;
  end;
  qsort(d,z,1,n);
  pN:=2000000000;
  for i:=1 to n-k do
  begin
    min:=d[i];
    max:=d[i+k];
    for j:=0 to k do
    begin
      if d[i+j]>max then max:=d[i+j];
      if d[i+j]<min then min:=d[i+j];
    end;
    tN:=max-min;
    if tN < pN then
    begin
      pN:=tN;
      U:=i;
    end;
  end;
  writeln(fwrite,K);
  for i:=0 to k do
    write(fwrite,z[U+i],' ');

  close(fwrite);
  close(fread);
end.
