{Анисько Дмитрий 9класс Лошницкая районная гимназия}

var a: array [1..10000000] of int64;
b,k: longint;
v,m,n,f:int64;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

read(n);
for k:=1 to n do
  read(a[k]);
for b:=1 to n do
  begin
    for k:=1 to n do
      if a[k]<a[k+1]
        then
          begin
             v:=a[k];
             a[k]:=a[k+1];
             a[k+1]:=v;
          end;
  end;

m:=n div 2;
for k:=1 to m do
  f:=f+a[k];

v:=0;
k:=n;
while k<>m do
  begin
    v:=v+a[k];
    k:=k-1;
  end;

b:=f-v;
writeln(b);

close(input);
close(output);
end.
