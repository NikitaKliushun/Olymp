{Tuleyko Maksim, Molodechno, 9A klass}
program zzz;
var  a,p:array [1..100] of longint;
     x,k,n,f,i,q:longint;
procedure InputData;
var   i:byte;
begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);
  read(n,k);
  f:=0;
  for i:=1 to n do
    begin
    read(a[i],p[i]);
    f:=f+a[i];
    end;
  close(input);
end;
procedure one;
var  q:integer;
begin
  while (a[i]<p[i]) and (f>0) do
    begin
    a[i]:=a[i]+1;
    f:=f-1;
    writeln(i);
    end;
end;
procedure two;
var  q:integer;
begin
  while (a[i]>0) and (f>0) do
    begin
    a[i]:=a[i]-1;
    f:=f-1;
    writeln('-',i);
    end;
end;
Procedure StartProcess;
begin
  if f<k then
         begin
         f:=k-f;
         i:=1;
         while f>0 do
           if p[i]>a[i] then one
                        else inc(i);
         end
         else
         begin
         f:=f-k;
         i:=1;
         while f>0 do
           if a[i]>0 then two
                      else inc(i);
         end;
end;
begin
  InputData;
  if f=k then write(abs(k-f))
         else
         begin
         writeln(abs(k-f));
         StartProcess;
         end;
  close(output);
end.
