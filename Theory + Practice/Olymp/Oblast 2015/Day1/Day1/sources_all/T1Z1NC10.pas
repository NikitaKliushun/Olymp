{Golovin Artem, g. Zhodino, Gymnasia 1, 10 klass, zadacha 1}
type
    int=longint;
    mas=array[1..100000] of int;
var
   s,r,q:string;
   o1,podstroka:mas;
   i,n,k,a,b,x,y,xx,yy:int;
   flag:byte;
   f:boolean;
   f1,f2:text;
 procedure input;
  begin
   assign(f1,'input.txt');
   reset(f1);
   assign(f2,'output.txt');
   rewrite(f2);
   readln(f1,n,k);
   s:='';
    for i := 1 to n do
     read(f1,o1[i]);
    for i := 2 to n do
     if (o1[i]<>o1[i-1]+1) then break;
   if i=n then f:=true;
   flag:=0;
    if k=1 then flag:=1;
  end;
 procedure qsort(l,r:int; var a:mas);
  var
     i,j,x,d:int;
  begin
   {for i := 1 to n-1 do
    for j := i to n-i do
     if a[j]>a[j+1] then
                        begin
                         d:=a[j]; a[j]:=a[j+1]; a[j+1]:=d
                        end;}
   i:=l; j:=r; x:=a[(l+r) div 2];
    repeat
     while a[i]<x do
      i:=i+1;
     while a[j]>x do
      j:=j-1;
      if i<=j then
                  begin
                   d:=a[i]; a[i]:=a[j]; a[j]:=d;
                   i:=i+1; j:=j-1
                  end;
    until i>j;
   if i<r then qsort(i,r,a);
   if l<j then qsort(l,j,a)
  end;
 procedure schet;
  var
     i,k:int;
  begin
   qsort(1,n,o1);
   k:=1; podstroka[1]:=k;
    for i := 2 to n do
     if o1[i]=o1[i-1] then
                          begin
                           k:=k+1;
                           podstroka[i]:=k
                          end
                      else
                          begin
                           k:=1;
                           podstroka[i]:=k
                          end
   end;
 procedure solve;
  var
     i,j:int;
  begin
   qsort(1,n,o1);
   schet;
   i:=2;
    while podstroka[i]>=podstroka[i-1] do
     i:=i+1;
   x:=podstroka[i-1]; xx:=o1[i-1]; str(xx,r);
   y:=podstroka[n];   yy:=o1[n];   str(yy,q);
    for j := 1 to x div k do
     s:=s+r;
    for j := 1 to y div k do
     s:=s+q
  end;
 procedure output;
  begin
   if flag=1 then
                 begin
                  writeln(f2,n);
                   for i := 1 to n do
                    write(f2,o1[i],' ');
                  close(f1);
                  close(f2);
                  exit;
                 end;
   if f=true then writeln(f2,0){vse konfeti raznie}
             else
                 begin
                  writeln(f2,length(s));
                   for i := 1 to length(s) do
                    write(f2,s[i],' ')
                 end;
  close(f1);
  close(f2)
  end;
begin
f:=false;
input;
 if f=false then
                begin
                 solve;
                 output
                end
            else
                output;
end.