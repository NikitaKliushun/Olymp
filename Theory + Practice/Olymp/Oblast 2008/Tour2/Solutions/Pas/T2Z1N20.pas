{T2Z1N20; Romanenya Ilya Yur'evich; Slutsk}
var sum: longint;
    i: longint;
    n: byte;
    a: array [1..100] of longint;

procedure sort(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]<x do
            inc(i);
           while x<a[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;

begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

read(n);

for i:=1 to n do
   read(a[i]);

sort(1,n);


for i:=1 to (n div 2) do
   sum:=sum-a[(n div 2)-i+1]+a[(n div 2)+i];

write(sum);

close(input);
close(output);
end.
