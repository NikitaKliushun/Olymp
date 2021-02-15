Program Z1;
var min,max,k,n,i,j,v,e,clock,res,pointer,i1,count:longint;
    a:array[1..101,1..2] of longint;
    b:array[1..101] of longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,k);
for i:=1 to n do readln(a[i,1],a[i,2]);
for i:=1 to n do begin
e:=e+a[i,1];
v:=v+a[i,2];
end;
if k>e
   then clock:=k-e
   else clock:=(k-e)*-1;
   i:=0;
   count:=1;
   writeln(clock);
   count:=0;
   if(k>=e)
   then
       while(pointer<k) do begin
        i:=i+1;
        res:=a[i,2]-a[i,1];
        pointer:=pointer+res;
        count:=0;
        while(count<>res) do begin
        writeln(i);
        count:=count+1;
        end;
        end;
close(input);
close(output);
end.
