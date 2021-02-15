var a,b,c:array[1..200000]of longint;
    n,m,i,j,k:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(n,m);
for i:=1 to n do read(a[i]);
for i:=1 to m do read(b[i]);
i:=0;
while (m<>0)and(n<>0) do
   if a[n]>b[m]
   then begin
        dec(a[n],b[m]);
        dec(m);
        inc(i);
        c[i]:=b[M+1]+k;
        k:=0;
        end
   else if b[m]>a[n]
        then begin
             dec(b[m],a[n]);
             inc(i);
             c[i]:=a[n]+k;
             k:=0;
             dec(n);
             end
        else begin
             k:=a[n];
             dec(n);
             dec(m);
             end;
if n=0
  then for j:=m downto 1 do
          begin
          inc(i);
          c[i]:=b[j]+k;
          k:=0;
          end
  else for j:=n downto 1 do
          begin
          inc(i);
          c[i]:=a[j]+k;
          k:=0;
          end;

for j:=i downto 1 do
   write(c[j],' ');
   close(input); close(output);
end.

