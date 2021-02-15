program z4;
var a:array[1..2000,1..2000] of integer;
    t:array[1..2000] of longint;
    n,k,i,j,x,l,y:integer;
    min:longint;
    c:ansistring;
    f1,f2:text;

function check() : byte;
var t,i,j:integer;

 begin
   x:=0;
   for i:=1 to k do
    begin
       t:=a[i,1];
       for j:=2 to n do
           if a[i,j]=t then inc(x);

    end;
   if x=n then x:=1
          else x:=0;
 end;

begin
   assign(f1,'input.txt');
   reset(f1);
   assign(f2,'output.txt');
   rewrite(f2);

   readln(f1,n,k);
   for i:=1 to n do
       for j:=1 to k do
           read(f1,a[i,j]);


   check;
   if x=1 then write(f2,'0')
          else y:=1;  //write(f2,y);
   for i:=1 to k do
       t[i]:=1000000;
   if y=1
    then
     begin
       for i:=1 to k do
           for j:=1 to k do
               if a[1,i]=a[2,j] then begin
                  if ((j-i)>(k-j+i)) and (t[i]>(k-j+i))
                     then t[i]:=k-j+i;
                  if  ( (j-i) < (k-j+i) ) and (t[i]>(j-i))
                     then t[i]:=j-i;

                  end;

       min:=100000;
       for i:=1 to k do
           if t[i]<min then min:=t[i];
       if min=100000 then write(f2,'-1')
                     else write(f2,min);
     end;                                // for i:=1 to k do write(f2,t[i],' ');
   close(f1);
   close(f2);
end.
