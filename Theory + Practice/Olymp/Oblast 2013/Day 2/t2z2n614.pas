program t2z2n614;
  var i,n,k,opt,max:longint;
      d,a:array [1..100000] of longint;
      use:array [1..100000] of boolean;


  procedure qsort(l,r:longint);
    var t,x,i,j:longint;
  begin
    i:=l; j:=r; x:=d[random(r-l+1)+l];
    repeat
      while d[i]<x do inc(i);
      while d[j]>x do dec(j);
      if i<=j then
        begin
          t:=d[i]; d[i]:=d[j]; d[j]:=t;
          t:=a[i]; a[i]:=a[j]; a[j]:=t;
          inc(i); dec(j);
        end;
    until i>j;
    if i<r then qsort(i,r);
    if l<j then qsort(l,j);
  end;

begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  read(n,k);
  max:=2147483647;
  for i:=1 to n do
    begin
      read(d[i]);
      a[i]:=i;
    end;
  qsort(1,n);
  for i:=1 to n-k do
    if d[i+k]-d[i]<max then opt:=i;

    writeln(k);
  for i:=opt to opt+k-1 do
    write(a[i],' ');

  close(input);
  close(output);
end.
