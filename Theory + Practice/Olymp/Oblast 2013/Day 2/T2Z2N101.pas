{Сафаров Руслан Валехович, г. Борисов, 11"A" класс, T2Z2N101}
Program T2Z2N101;
var n,m,k,i,j,y,p,r,e:longint;
x,z:extended;
t:boolean;
a,b:array[1..100000] of longint;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
y:=0;
while not eof(f1) do
 begin
  while (not eoln(f1)) and (y=0) do
   begin
    read(f1,n);
    read(f1,k);
    y:=1;
   end;
   i:=i+1;
  read(f1,a[i]);
 end;
m:=i;
y:=0;
p:=0;
r:=0;
t:=false;
For i:=1 to m do
 For j:=i to m-1 do
  begin
   x:=x+(abs(a[i]-a[j+1]));
   p:=p+1;
  end;
x:=trunc(x/p);
p:=0;
y:=0;
For i:=1 to m do
begin
   For j:=i to m-1 do
    begin
     z:=abs(a[i]-a[j+1]);
     if z<=x then
      begin
       if y=0 then
        begin
         For e:=1 to r do
          if b[e]=i then
            t:=true;
         if t<>true then
          begin
           p:=p+1;
           b[p]:=i;
          end;
         y:=1;
         r:=r+1;
         t:=false;
        end;
       For e:=1 to r do
        if b[e]=j+1 then
         t:=true;
       if t<>true then
        begin
         p:=p+1;
         b[p]:=j+1;
         r:=r+1;
        end;
       t:=false;
      end;
    end;
 y:=0;
 end;
writeln(f2,k);
For i:=1 to k do
 write(f2,b[i],' ');
close(f1);
close(f2);
end.
