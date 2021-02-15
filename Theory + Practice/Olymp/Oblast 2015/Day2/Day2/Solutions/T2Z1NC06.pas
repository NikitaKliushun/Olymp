//Merkulov Anton, Minskiy raion, 11 class, zadacha ü1
Program T2Z1NC06;
var s,t:array[1..10000] of char;
i,d,k,l1,l2,minl:longint;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
i:=2;
k:=0;
l1:=0;
l2:=0;
k:=0;
Read(f1,s[1]);


While s[i-1] in ['a'..'z']  do
 begin
  Read(f1,s[i]);
  i:=i+1;
 end;

For d:=1 to i do
 if s[d] in ['a'..'z'] then
  l1:=l1+1;


i:=2;
Reset(f1);
Readln(f1);
Read(f1,t[1]);

While t[i-1] in ['a'..'z']  do
 begin
  Read(f1,t[i]);
  i:=i+1;
 end;

For d:=1 to i do
 if t[d] in ['a'..'z'] then
  l2:=l2+1;


if l1<l2 then
 minl:=l1
 else minl:=l2;

for i:=0 to minl do
 if s[l1-i]=t[l2-i] then
  k:=k+1
 else
 break;

Write(f2,k);



Close(f1);
Close(f2);
end.
