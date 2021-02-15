Var
n,k:Integer;
a:array [1..60] of Longint;
i,j,h,kol,l,g:Integer;
y,x:Int64;
code:array [1..60,1..60] of Integer;

procedure first;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
end;

procedure last;
begin
close(input);
close(output);
end;

Begin
first;
read(n,k);
for i:=1 to n do read(a[i]);
for i:=1 to n do
for g:=1 to n do
code[i,g]:=0;
i:=1;
l:=1;
while i<>n do
begin
j:=1;
while (x<k)and(j<n) do
  begin
 if i<>j then
 x:=x+a[i]+a[j];
 j:=j+1;
 end;
 g:=j-1;
 for h:=j to n-1 do
 y:=y+a[h]+a[h+1];
if (x<=y)and(code[i,g]=0) then begin kol:=kol+1; code[i,g]:=1; end;
l:=l+1;
if l=n then begin i:=i+1; l:=1; end;
x:=0;
y:=0;
end;

write(kol);

last;
End.
