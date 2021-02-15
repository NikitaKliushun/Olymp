{Ефимович Максим Геннадьевич, г.Солигорск, 9"Б" класс, №3}
var n,m,i,ans,j,k:longint;
    x,y:array[1..100000] of integer;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(n,m);
for i:=1 to m do
   readln(x[i],y[i]);
ans:=0;
k:=m+1;
for i:=1 to n do
  for j:=1 to n do
    begin
    if (i mod 2=0) and (j mod 2<>0)
       then begin
            x[k]:=i;
            y[k]:=j;
            inc(k);
            end;
    if (i mod 2<>0) and (j mod 2=0)
       then begin
            x[k]:=i;
            y[k]:=j;
            inc(k);
            end;
    end;
for i:=1 to n+k-1 do
  for j:=i+1 to n+k do
     begin
     if (x[i]=x[j]) and (y[i]=y[j]) and (x[i]<>0) and (y[i]<>0) and (x[j]<>0) and (y[j]<>0)
        then begin
             x[j]:=0;
             y[j]:=0;
             end;
     if (x[i]=y[j]) and (y[i]=x[j]) and (x[i]<>0) and (y[i]<>0) and (x[j]<>0) and (y[j]<>0)
        then begin
             x[j]:=0;
             y[j]:=0;
             end;
     end;
for i:=1 to n+k do
  if (x[i]<>0) and (y[i]<>0)
    then inc(ans);
writeln(ans-m);
close(input);
close(output);
end.
