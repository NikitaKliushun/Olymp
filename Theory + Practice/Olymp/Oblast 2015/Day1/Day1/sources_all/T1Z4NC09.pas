Var n,i,x,y,z:longint;  t1,t2:text; a:array [1..100000]of longint;
Begin
assign (t1,'input.txt'); reset (t1);
assign (t2,'output.txt'); rewrite (t2);
randomize;
read (t1,n);
n:=n-1;
for i:=1 to n do read (t1,x,y,a[i]);
x:=a[1];
y:=a[1];
for i:=1 to n do
  if a[i]>x then x:=a[i] else
    if a[i]<y then y:=a[i];
write (t2,random (x-y+1)+y);
close (t1); close (t2);
end.
