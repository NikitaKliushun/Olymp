program z2;
var
  n,i,k,t,p,s:longint;
  a:array[1..100000]of byte;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
    read(n,k);
    readln;
    for i:=1 to n do
      read(a[i]);
    s:=0;
    p:=0;
    for i:=1 to n do
      if a[i]=1
        then s:=s+1;
    for i:=1 to n do
      if a[i]=2
        then  p:=p+1;
    s:=s div k;
    p:=p div k;
  // writeln(s,' ',p);
    writeln(s+p);
    for i:=1 to s do
      write(1,' ');
    for i:=1 to p do
      write(2,' ');

  close(input);
  close(output);
end.








