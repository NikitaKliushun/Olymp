program z1;
var
a: array[1..3000] of longint;
b: array[1..3000] of longint;
c: array[1..3000,1..2] of longint;
m,w,s,t,i,j,n,k,d,otv,met,sum: longint;
min: int64;
begin
assign(input, 'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(m,n);
for i:=1 to m do
        read(a[i]);
readln;
min:=999999999999;
for i:=1 to n do
        read(b[i]);
for I:=1 to n-m+1 do   begin
       if a[1]+b[i]<=min then begin min:=a[1]+b[i]; c[1,1]:=b[i]+a[1]; c[1,2]:=i; end;
       met:=c[1,2];
       for k:=2 to m do
                begin
                 min:=99999999;
                 for j:=n downto i+1 do
                        if (a[k]+b[j]<=min) and (a[k]+b[j]>c[k-1,1]) and (j<>c[k-1,2]) then begin min:=a[k]+b[j]; c[k,1]:=b[j]+a[k]; c[k,2]:=j; end;
                met:=c[k,2];
                end;
for j:=1 to m do
        if c[j,2]<>0 then inc(otv);
if otv=m then begin for j:=1 to m do
        write(c[j,2],' '); exit; end
          else begin write('-1'); exit; end;
                       end;
close(input);
close(output);
end.