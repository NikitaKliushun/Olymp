var a:array[1..20,1..20]of longint;
    n,m,i,j,ans,minn,k,p,v,f:longint;
    t:boolean;
procedure vvod;
   begin
   assign(input,'input.txt'); reset(input); assign(output,'output.txt');rewrite(output);
read(n,m);
for i:=1 to n do
   for j:=1 to m do
      read (a[i,j]);
   end;
function min(x,y:longint):longint;
   begin
   if x>y then min :=y else min:=x;
   end;

begin
vvod;
minn:=n*m;
for i:=1 to m do
   begin
   ans:=0;
   t:=true;
   for j:=2 to n do
      begin
      p:=m;
      for k:=0 to m-1 do
         begin
         if i+k>m then v:=i+k-m else v:=i+k;
         if (a[j,v] = a[1,i])then
            p:=min(p,min(k,m-k));
         end;
      if p=m then begin t:=false; inc(f); end;
      inc(ans,p);
      end;
   if (ans<minn)and t then minn:=ans;
   end;
if f<>m then write(minn) else write(-1);
close(input); close(output);
end.
