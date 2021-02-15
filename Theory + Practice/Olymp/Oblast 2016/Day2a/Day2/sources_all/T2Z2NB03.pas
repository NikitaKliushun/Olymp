var a,h:array[1..1000]of int64;
    f:text;
    i,j,g,n,m,max:longint;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,m);
for i:=1 to n do
 read(f,a[i]);
readln(f);
for i:=1 to m do
 read(f,h[i]);
close(f);

assign(f,'output.txt');
rewrite(f);
if n=1 then begin writeln(f,1); close(f); halt; end;
if n=2 then
 begin
  for i:=1 to m-1 do
   begin
    max:=0;
    max:=a[1]+h[i];
    for j:=i+1 to m do
     begin
      if a[2]+h[j]>max then begin writeln(f,i,' ',j);close(f); halt; end;
     end;
   end;
 end;
if n=3 then
 begin
  for i:=1 to m-2 do
   begin
    max:=0;
    max:=a[1]+h[i];
    for j:=i+1 to m-1 do
     begin
      max:=a[1]+h[i];
      if a[2]+h[j]>max then
      begin
       max:=a[2]+h[j];
       for g:=j+1 to m do
        begin
         if a[3]+h[g]>max then begin writeln(f,i,' ',j,' ',g);close(f); halt; end;
        end;
      end;
     end;
   end;
 end;
writeln(f,-1);
close(f);
end.