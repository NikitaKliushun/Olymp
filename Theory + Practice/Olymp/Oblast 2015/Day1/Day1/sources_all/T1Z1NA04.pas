var f:text;
    i,j,m,n,k,tek,max:longint;
    a:array[1..10099]of longint;
    ty:array[1..120]of longint;
    ans:array[1..10099]of longint;
begin
 assign(f,'input.txt');
 reset(f);
 readln(f,n,k);
 for i:=1 to n do
  read(f,a[i]);
 close(f);
 for i:=1 to n do
  begin
   inc(ty[a[i]]);
   if a[i]>max
    then max:=a[i];
  end;
 for i:=1 to max do
  begin
   m:=m+ty[i] div k ;
   ans[i]:=ty[i] div k;
  end;

assign(f,'output.txt');
rewrite(f);
writeln(f,m);
for i:=1 to max do
 for j:=1 to ans[i] do
  write(f,i,' ');
close(f);
end.