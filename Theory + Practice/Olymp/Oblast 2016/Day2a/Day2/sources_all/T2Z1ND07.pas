program T2Z1ND07;
var m,w,s,b,t,i,j,sum,h,u,p,o,y:integer;
   d:array[1..10000] of integer;
   n:array[1..10000] of integer;
   z:array[1..1000,1..1000] of integer;
   f1,f2:text;

begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

read(f1,m,w);
writeln;
for i:=1 to m do
 read(f1,d[i]);
writeln;
read(f1,s,b,t);

for i:=1 to m do
  begin
    n[i]:=((d[i]-(w-s+1)) div w)+2;
  end;
 

for u:=1 to m do
  begin
    o:=1;
    for i:=1 to 5 do
      for j:=1 to w do
        z[i,j]:=0;

      for i:=1 to n[u] do
        begin
          if i=1 then j:=s else j:=1;
          if (u>1) and (i=1)  then j:=y;
          for j:=j to w do
            begin
              z[i,j]:=o;
              if (o<d[u]) and (o<>0) then o:=o+1 else o:=0;
              if o=d[u] then y:=j+2;
            end;
        end;

    for i:=1 to n[u] do
      if z[i,b]=t then p:=p+1;
  end;

writeln(f2,p);
close(f1);
close(f2);
end.
