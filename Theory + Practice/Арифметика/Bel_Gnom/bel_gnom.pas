const
maxn    =      1001000;
var x,n,m,h           :longint;
b,a,c:array [1..maxn] of longint;
procedure  doc;
begin
assign(input,'dwarfs.in');
reset(input);
read(n);
for x:=1 to n do
read (a[x]);
for x:=1 to n do
begin
read(b[x]);
c[x]:=x;
end;
close(input);
assign(output,'dwarfs.out');
rewrite(output);
end;
procedure kleer;
begin
for x:=1 to n-1 do
write(c[x], ' ');
writeln(c[n]);
close(output);
end;

procedure q_sort (l,r:longint);
var
 p , j , i , t , q   :longint;
 begin
i:=l;j:=r;
q:=(l+r) div 2;
p:=a[q]+b[q];
repeat
while a[i]+b[i]>p do inc(i);
while a[j]+b[j]<p do dec(j);
   if i<=j then begin t:=a[i];
                a[i]:=a[j];
                a[j]:=t;
                t:=b[i];b[i]:=b[j];
                b[j]:=t;
                t:=c[i];c[i]:=c[j];
                c[j]:=t;
                inc(i);
                dec(j);
                end;
  until i>j;
   if l<j then q_sort(l,j);
   if i<r then q_sort(i,r);
   end;
   procedure war;
   begin
   m:=0;
   for x:= n downto 1 do
   if b[x]<=m then BEGIN
                      writeln(-1);
                      close(output);
                      halt;
                   end

   else inc(m,a[x]);
   END;



   begin
   doc;
   q_sort(1,n);
   war;
   kleer;
   end.












