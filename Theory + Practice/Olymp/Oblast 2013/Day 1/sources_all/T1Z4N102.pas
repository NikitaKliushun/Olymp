{Козелько Никита Сергеевич, город Солигорск, 9 класс, задача 4}
var a:array[1..200000] of longint;
    b, bb:array[1..201000] of longint;
    c:array[1..201000] of longint;
    o:array[1..201000] of longint;
    n, m, k, i, f, j, kk, ii, u1, u2:longint;
procedure ino(x:longint);
 begin
 u1:=u1+1;
 o[u1]:=x;
 end;
procedure outo(var x:longint);
 begin
 u2:=u2+1;
 x:=o[u2];
 end;
begin
assign(input, 'input.txt');reset(input);
assign(output, 'output.txt');rewrite(output);
readln(n, m, k);
for i:=1 to n do
 a[i]:=0;
for i:=1 to m do
 begin
  read(j);
  a[j]:=1;
 end;
for i:=1 to n do
 read(b[i]);
read(f);
if (k=1)and(m=1) then writeln(1)
  else
   begin
   kk:=0;
   for i:=1 to n do
    c[i]:=0;
   for i:=1 to n do
    c[b[i]]:=c[b[i]]+1;
   for i:=1 to n do
    if (c[i]>1)and(i<>f)
    then begin
          u1:=1; u2:=1;
          ino(i);
          for ii:=1 to n do
           bb[ii]:=b[ii];
          while u1<>u2 do
           begin
           outo(j);
           if b[j]<>0 then
           begin
           if a[j]=1 then begin
                          m:=m+1;
                          a[i]:=1;
                          break;
                          end;
           for ii:=1 to n do
            if bb[ii]=j then begin
                             ino(ii);
                             bb[j]:=0;
                             end;
            end;
         end;
       end;
         u1:=1; u2:=1;
    for i:=1 to n do
     if b[i]=f then ino(i);
    while u1<>u2 do
    begin
    outo(j);
    if a[j]=1 then kk:=kk+1
     else for i:=1 to n do
            if b[i]=j then ino(i);
    end;
    writeln(kk);
   end;


close(input);close(output);
end.
