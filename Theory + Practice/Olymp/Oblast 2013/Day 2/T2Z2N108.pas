program zzz;
 var a,b:array [1..100000] of longint;
 i,i1,i2,n,k,min:longint;

procedure Qsort(l,r:longint);
var i,j,t1,t2,x:longint;
 begin
   i:=l;
   j:=r;
   x:=a[l+random(r-l+1)];
   repeat
     while a[i]<x do inc(i);
     while x<a[j] do dec(j);
     if i<=j then
       begin
         t1:=a[i];
         a[i]:=a[j];
         a[j]:=t1;
         t2:=b[i];
         b[i]:=b[j];
         b[j]:=t2;
         inc(i);
         dec(j);
       end;
   until i>j;
   if i<r then Qsort(i,r);
   if l<j then Qsort(l,j);
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
  b[i]:=i;
 end;

 Qsort(1,n);


 min:=2000000000;
 i1:=0;
 i2:=0;

 for i:=1 to n-k do
  begin
   if a[i+k-1]-a[i]<min then
        begin
          min:=a[i+k-1]-a[i];
          i1:=i;
          i2:=i+k-1;
        end;
  end;

 writeln(k);
 for i:=i1 to i2 do
 begin
   write(b[i]);
   if i<>i2 then write(' ');
 end;
 close(input);
 close(output);
end.
