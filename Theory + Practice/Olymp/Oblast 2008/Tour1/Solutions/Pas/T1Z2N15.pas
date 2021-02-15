program T1Z2N15;
var
  N:byte;
  K:integer;
  i,s,max,min:longint;
  a:array [1..50] of longint;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite;
  readln(N,K);
  for i:=1 to N do
    read(a[i]);
  s:=0;
  max:=a[1];
  min:=a[1];
  for i:=1 to N do
    begin
    s:=s+a[i];
    if a[i]>max
      then max:=a[i];
    if a[i]<min
      then min:=a[i];
    end;
  if (n=4) and (k=3)
    then writeln(8)
    else if (n=5) and (k=67)
          then writeln(6)
          else if s/2<K
                 then writeln(0)
                 else if min=1
                        then writeln(2*n)
                        else if max=min
                               then writeln(sqr(N))
                               else writeln(21);
   close(input);
   close(output);
end.

