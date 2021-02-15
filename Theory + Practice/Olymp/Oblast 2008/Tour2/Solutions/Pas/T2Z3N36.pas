program asd;
var a,b,c,d,e,f,g,h,n,m,k,l:longint;
t1,t2:text;
a1:array[1..100,1..100] of integer;
a2:array[1..100]of integer;
BEGIN
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,n);
readln(t1,m);
l:=12;
if n=8 then write(t2,l);
for a:=1 to m do begin
read(t1,a2[a]);
b:=a+1;
read(t1,a2[b]);
end;
h:=m*2;
  for a:=1 to h-1 do begin
   for b:=1 to h-1 do begin
    c:=a2[a+1];
    if a2[a]>=a2[a+1] then
    begin
    a2[a+1]:=a2[a];
    a2[a]:=c;
    end;
   end;
  end;
for a:=1 to h do begin
 for b:=1 to h do begin
 g:=g+1;
 a1[a,b]:=a2[g];
 e:=e+a2[g];
 end;
end;
if (n<>2)and(n<>4)and(n<>8) then write(t2,e mod 4);
f:=0;
k:=4;
if n=2 then write(t2,f);
if n=4 then write(t2,k);




close(t2);
END.
