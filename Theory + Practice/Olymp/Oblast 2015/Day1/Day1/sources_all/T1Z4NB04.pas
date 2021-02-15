Program T1Z4NB04;
var x:array [1..10000] of integer;
    y:array [1..10000] of integer;
    z:array [1..10000] of integer;
    st:array [1..10000] of integer;
    g:array [1..10000] of integer;
n,i,i1,d,max,b,l:integer;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,n);
for i:=1 to n-1 do
  read(f1,x[i],y[i],z[i]);
for i:=2 to n do
begin
  d:=i;
  while d<>1 do
  for i1:=1 to n-1 do
    if d=y[i1] then begin
                         d:=x[i1];
                         st[i]:=st[i]+z[i1];
                    end;
end;
max:=st[1];
for i:=2 to n do
  if max<st[i] then max:=st[i];
for i:=1 to n do
  if max=st[i] then begin
                         d:=i;
                         while d>1 do
                           for i1:=n-1 downto 1 do
                           begin
                             if (d=y[i1]) and (x[i1]=1) then d:=1;
                             if (d=y[i1]) and (x[i1]<>1) then begin
                                                                   d:=x[i1];
                                                                   st[i]:=st[i]-z[i1];
                                                                   z[i1]:=0;
                                                              end;
                           end;
                    end;
max:=st[1];
for i:=2 to n do
  if max<st[i] then max:=st[i];
i:=n;
while l<>1 do
  if max=st[i] then begin
                         i1:=i;
                         l:=1;
                    end;
d:=i;
while d>1 do
  for i1:=1 to n-1 do
  begin
    if d=y[i1] then begin
                         d:=x[i1];
                         st[i]:=st[i]-z[i1];
                    end;
  end;
max:=st[1];
for i:=2 to n do
  if max<st[i] then max:=st[i];
writeln(f2,max);
Close(f1);
Close(f2);
end.