program z2;
var n,k,l,i,j,o,p,sum,z1,z3,y,m:integer;
d,a:array [1..100] of longint;
me:array [1..100] of byte;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,k);
for i:=1 to n do begin read(f1,d[i]); a[i]:=d[i]; end;
for i:=1 to n do
 for j:=i to n do if d[i]>d[j] then  begin
 y:=a[j];
 a[j]:=a[i];
 a[i]:=y;
 end;
 sum:=a[1]+a[n];
 for i:=1 to n-k do begin
 for j:=i to n do if a[i]+a[i+j]<sum then
 begin sum:=a[i]+a[j]; z1:=i; z3:=j; end;
 for o:=1 to n do if( (d[o]>=a[z1]) and (d[o]<=a[z3])
  or (d[o]<=a[z1]) and (d[o]>=a[z3]))  then  begin me[o]:=1; m:=m+1; end;
  if m>=k then begin writeln(f2,m);

   for p:=1 to n do if me[p]=1 then writeln(f2,d[p]);  end;
   end;
close(f1);
close(f2);
end.
