//удовиченко алексей г.Столбцы 8кл. СШ №3
program z1;
var a:array[1..110]of longint;
    i,j,n,pp,sumshr,sumkr,i1,i2:longint;

BEGIN
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
   readln(n);
     for i:=1 to n do
       read(a[i]);



     for i:=1 to n-1 do
       for j:=1 to n-1 do
          if a[j]<a[j+1] then
                           begin
                            pp:=a[j];
                            a[j]:=a[j+1];
                            a[j+1]:=pp;
                           end;
     for i1:=1 to round(n/2) do
        sumshr:=sumshr+a[i1];
     for i2:=i1+1 to n do
        sumkr:=sumkr+a[i2];
     writeln(sumshr-sumkr);


 close(input);
 close(output);
                                       END.
