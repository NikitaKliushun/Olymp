{Ефимович Максим Геннадьевич, г.Солигорск, 9 "Б" класс, №1}
var n,m,i,j,i1,j1,ans:integer;
    c:string;
    f1,f2:text;
    a:array[1..400,1..400] of integer;
function ag(x1,y1,x2,y2:integer) :boolean;
 var z1,z2,k:integer;
  begin
  ag:=true;
  k:=0;
  for z1:=x1 to x2 do
    begin
    for z2:=y1 to y2 do
       begin
       if a[z1,z2]<>a[x2-k,z2]
         then begin
              ag:=false;
              exit;
              end;
       end;
    inc(k);
    end;
  ag:=true;
  end;
begin
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
readln(f1,n,m);
ans:=0;
for i:=1 to n do
  begin
  readln(f1,c);
  for j:=1 to m do
    if c[j]='1' then a[i,j]:=1
                else a[i,j]:=0;
  end;
for i:=1 to n-1 do
  for j:=1 to m do
    for i1:=i+1 to n do
       for j1:=1 to m do
          begin
          if (i>i1) or (j>j1) then continue;
          if (abs(i-i1)<1) or (abs(j-j1)<0)
             then continue;
          if ag(i,j,i1,j1)=true
              then begin
                   inc(ans);
                   end;
          end;
writeln(f2,ans);
close(f1);
close(f2);
end.
