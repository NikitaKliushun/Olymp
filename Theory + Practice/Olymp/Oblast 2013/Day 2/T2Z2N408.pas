{сугак даниил викторович з2 10кл}
Var a:array[1..100000] of longint;
    b:array[1..100000] of longint;
    c:array[1..100000] of longint;
    n,k:integer;
    f1,f2:text;

Procedure open;
  var i:longint;
       begin
       assign(f1,'input.txt');
       reset(f1);
       assign(f2,'output.txt');
       rewrite(f2);
       read(f1,n,k);
       readln(f1);
       for i:=1 to n do begin
                        read(f1,a[i]);
                        c[i]:=i;
                        end;
       end;

{Procedure Qsort(x,y:integer);
var i,j,z,s:integer;
begin
z:=(y-x div 2)+1;
i:=x;
j:=y;

repeat
while a[z,1]>a[i,1] do inc(i);
while a[z,1]<a[j,1] do dec(j);
s:=a[i,1];
a[i,1]:=a[j,1];
a[j,1]:=s;
until i>=j;

if x<i then Qsort(x,i);
if j<y then Qsort(j,y);
end;}

Procedure sort;
var m,l,l2,s,i,j,q:longint;
begin
l2:=0;
for i:=1 to n-1 do begin
m:=a[i];
l:=i;
for j:=i+1 to n do begin
                 if m>=a[j] then begin
                                  m:=a[j];
                                  l:=j;
                                  end;
                 end;
s:=a[i];
a[i]:=a[l];
a[l]:=s;

s:=c[i];
c[i]:=c[l];
c[l]:=s;
writeln(c[i]);
end;
end;

Procedure search;
 Var i,j,l,m:longint;
 begin
 j:=1;
 i:=1;
 while i<=n-k+1 do begin
                 b[j]:=a[i+k-1]-a[i];
                 inc(j);
                 i:=i+1;
                 end;
 m:=b[1];
 l:=1;
 for j:=1 to i-1 do if m>=b[j] then begin
                                   m:=b[j];
                                   l:=j;
                                   end;
 write(f2,k);
 writeln(f2);
 write(f2,c[l]);
 for i:=l+1 to l+k-1 do begin
                      write(f2,c[i]:2);
                      end;
 //for i:=1 to n do writeln(f2,a[i,1],' ',a[i,2]);
 end;

begin
open;
//Qsort(1,n);
sort;
search;
close(f1);
close(f2);
end.
