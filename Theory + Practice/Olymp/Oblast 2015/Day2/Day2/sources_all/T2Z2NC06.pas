//Merkulov Anton, Minskiy raion, 11 class, zadacha ü2
Program T2Z2NC06;
var d,m:uint64;
i:integer;
k:byte;
f1,f2:text;
procedure count(r:uint64);
var f:longint;
begin
 for f:=2 to r do
  if k=1 then exit else
  if f*f*f=r then
   begin
    k:=1;
    exit;
   end;
end;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
i:=0;
d:=0;
k:=0;
m:=0;

Read(f1,d);

While k=0 do
 begin
  i:=i+1;
  m:=i*d;
  count(m);
 end;

Write(f2,i);




Close(f1);
Close(f2);
end.
