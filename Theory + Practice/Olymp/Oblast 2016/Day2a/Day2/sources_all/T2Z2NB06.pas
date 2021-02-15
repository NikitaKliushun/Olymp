{Галуза Вадим Александрович T2Z2NB06}
var
n,m,i,x1,x2,x3,l,r,min,max:longint;
a,b:array[1..100] of longint;
begin
max:=-100;
min:=2000000000;
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,m);

for i:=1 to n do
read(a[i]);
for i:=1 to m do
read(b[i]);
close(input);
if n=2 then begin
            x1:=m-(n-1);
            for i:=1 to x1 do
                 if b[i]<min then begin
                                   min:=b[i];
                                   x2:=i;
                                   end;
                  for i:=x2+1 to m do
                 if b[i]>max then begin
                                    max:=b[i];
                                    x3:=i;
                                    end;
               if (a[1]<>a[2])and(b[x2]+a[1]<b[x3]+a[2]) then writeln(x2,' ',x3)
                             else writeln(-1);
                             close(output);
                      halt;
            end
       else begin
x1:=m-(n-1);
for i:=1 to x1 do
if b[i]<min then begin
                 min:=b[i];
                 x2:=i;
                 end;
for i:=x2+2 to m do
if b[i]>max then begin
                  max:=b[i];
                  x3:=i;
                  end;
l:=a[1]+min;
r:=a[3]+max;
for i:=x2+1 to x3-1 do
if (b[i]+a[2]>l)and(b[i]+a[2]<r) then begin
                                      writeln(x2,' ',i,' ',x3);
                                      close(output);
                                      halt;
                                      end;
if (a[1]=a[2])and(a[2]=a[3]) then writeln(-1);
end;
close(output);
end.