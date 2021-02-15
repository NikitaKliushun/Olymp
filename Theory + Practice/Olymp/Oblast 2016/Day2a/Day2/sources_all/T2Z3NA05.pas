{Barkovsky Nikolay Anatolevich,Boloshin,10,3}
var a:array[0..10000000] of longint;
    n,k,i,max,q,t:longint;
procedure qwe(s,x:longint);
var j:longint;
 begin
  if s>max then max:=s;
  for j:=x to n*k do
   if (a[j]>a[x])
    then qwe(s+1,j);
 end;
procedure qwe1(i,j:longint);
 begin
  if i<=j
   then begin
         t:=a[i];
         a[i]:=a[j];
         a[j]:=t;
         qwe1(i+1,j-1);
        end;
 end;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 readln(n,k);
 for i:=1 to n do
  begin
   read(a[i]);
   for q:=1 to k-1 do
    a[q*n+i]:=a[i];
  end;
 q:=1;
 while q<=k-1 do
  begin
   qwe1(q*n+1,2*q*n);
   q:=q+2;
  end;
 qwe(0,0);
 write(max);
 close(input);
 close(output);
end.
