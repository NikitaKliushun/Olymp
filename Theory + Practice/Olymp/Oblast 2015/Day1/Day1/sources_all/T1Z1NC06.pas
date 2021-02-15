// Merkulov Anton Minskiy raion, 11 class, 1 zadacha
Program T1Z1NC06;
var n,k,m,i,l,t,t1,t2,t3,s,z:longint;
A,C:array[1..100000] of byte;
f1,f2:text;
begin

Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);

Readln(f1,n,k);

For i:=1 to n do
 Read(f1,A[i]);

For i:=1 to n-1 do
 for l:=1 to n-1 do
  if A[l]>A[l+1] then
   begin
    t:=A[l];
    A[l]:=A[l+1];
    A[l+1]:=t;
   end;


t:=A[1];

While A[n]<>0 do
 begin
  For i:=1 to n do
   if A[i]=t then
    begin
     t1:=t1+1;
     C[t1]:=A[i];
    end;
  z:=t1-t3;
  z:=trunc(z/k);
  if (z=1) or (z>1) then
   t2:=z+t3
  else t2:=t3;
  For i:=t2+1 to t1 do
   C[i]:=0;
  For i:=1 to t1 do
   A[i]:=0;
  if not(t1+1>n) then
   t:=A[t1+1];
  t3:=t1;
 end;


For i:=1 to n do
 if C[i]<>0 then
  s:=s+1;

Writeln(f2,s);

For i:=1 to n do
 if C[i]<>0 then
  Write(f2,C[i],' ');



Close(f1);
Close(f2);

end.
