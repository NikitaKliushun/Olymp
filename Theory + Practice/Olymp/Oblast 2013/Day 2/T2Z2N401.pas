{Монич Денис Николаевич, г. Борисов, 11 "А", задача №2}
program t2z2n401;
type mass=array[0..100000] of longint;
var a,na:mass;
    n,k,i,kr,z,r,x1,x2:longint;
    f1,f2:text;



    procedure qsort(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]>x do
            inc(i);
           while x>a[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                y:=na[i];
                na[i]:=na[j];
                na[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           qsort(l,j);
         if i<r then
           qsort(i,r);
      end;



begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,n);
readln(f1,k);
writeln(f2,k);
For i:=1 to n do
 begin
  read(f1, a[i]);
  na[i]:=i;
 end;
i:=0;

qsort(1,n);
r:=a[1]-a[2];
z:=1;
For i:=3 to n do
  if a[i-1]-a[i]<r then
    begin
      r:=a[i-1]-a[i];
      z:=i-1;
    end;

write(f2,na[z],' ',na[z+1]);
x1:=z-1;
x2:=z+2;
kr:=2;

while kr<k do
  begin
   if (x1>0) and (x2<=n) then

    if a[z]-a[x2]<a[x1]-a[z] then
      begin
        write(f2,' ',na[x2]);
        x2:=x2+1;
        kr:=kr+1;
      end                    else
      begin
        write(f2,' ',na[x1]);
        x1:=x1-1;
        kr:=kr+1;
        z:=x1;
      end                else
    if x1<1 then
      begin
        write(f2,' ',na[x2]);
        x2:=x2+1;
        kr:=kr+1;
      end   else
    if x2>n then
      begin
        write(f2,' ',na[x1]);
        x1:=x1-1;
        kr:=kr+1;
        z:=x1;
      end

  end;

close(f1);
close(f2);
end.
