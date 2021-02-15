var d,tek,del,ans,kol,kost:int64;
    i,j:longint;
    a:array[0..1000]of byte;
    f:text;

procedure qsort(l,r:longint);
var i,j,p,s:longint;
begin
 i:=l;
 j:=r;
 s:=a[(l+r) div 2];
 while i<=j do
  begin
   while a[i]<s do inc(i);
   while s<a[j] do dec(j);
   if i<=j then
            begin
             p:=a[i];
             a[i]:=a[j];
             a[j]:=p;
             inc(i);dec(j);
            end;
  end;
         if l<j then qsort(l,j);
         if i<r then qsort(i,r);
end;

begin
assign(f,'input.txt');
 reset(f);
read(f,d);
close(f);
del:=1;
while d>1 do
 begin
 inc(del);
  while (d div del>0)and (d mod del=0) do
   begin
    inc(tek);
    a[tek]:=del;
    d:=d div del;
  end;
 end;
 qsort(1,tek);
ans:=1;
for i:=1 to tek do
 begin
  if a[i]=a[i+1] then inc(kol)
                 else
                  begin
                   inc(kol);
                   if kol mod 3<>0 then kost:=((((kol div 3)+1)*3)-kol)
                                   else kost:=0;
                   for j:=1 to kost do
                    begin
                     ans:=ans*a[i];
                    end;
                   kol:=0;
                  end;
 end;
assign(f,'output.txt');
rewrite(f);
write(f,ans);
close(f);
end.
