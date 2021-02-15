program z2;
const inf=1000000;
var m,n,i,j,c,k,u:integer;
    p,p0,t:longint;
    h,b,nb:array[1..3000] of longint;
    a:array[0..3000] of integer;
    f1,f2:text;
procedure qsortb(l,r:integer);
var i,j:integer;
    v,t:longint;
begin
  i:=l; j:=r; v:=b[(l+r) div 2];
  repeat
    while b[i]<v do inc(i);
    while b[j]>v do dec(j);
    if i<=j then
      begin
        t:=b[i]; b[i]:=b[j]; b[j]:=t;
        if b[i]<>b[j] then
         begin
           t:=nb[i]; nb[i]:=nb[j]; nb[j]:=t;
         end;
        inc(i);
        dec(j);
      end;

  until i>j;
  if i<r then qsortb(i,r);
  if l<j then qsortb(l,j);

end;

begin
   assign(f1,'input.txt');
   reset(f1);
   assign(f2,'output.txt');
   rewrite(f2);

   read(f1,m,n);
   for i:=1 to m do
       read(f1,h[i]);
   for i:=1 to n do
       read(f1,b[i]);
   for i:=1 to n do
       nb[i]:=i;



   qsortb(1,n);

  for i:=1 to n do
      for j:=i to n do
          if (b[i]=b[j]) and (nb[i]>nb[j]) then begin t:=nb[i]; nb[i]:=nb[j]; nb[j]:=t; end;
   k:=1;
   j:=1;
   while j<=m do
    begin
      u:=0;
      for i:=1 to n do
        begin

          p:=h[j]+b[i];
          if (p>p0) and (u=0) and (nb[i]>a[k-1]) and (b[i]>0)  then
           begin
             a[k]:=nb[i];  inc(k); b[i]:=0;
             p0:=p;             //write(f2,a[k-1],' ');
             inc(c); u:=1;
           end;
        end;

      if u=0 then break;
      inc(j);
     end;
   if c=m then for i:=1 to m do write(f2,a[i],' ')
           else write(f2,'-1');


   close(f1);
   close(f2);
end.
