{T1Z2N20; Romanenya Ilya Yur'evich; Slutsk}
var z1,z2,sum: int64{longint};
    i,q: longint;
    k: integer;
    n: byte;
    a: array [1..50] of longint;
    ss: array [0..50] of shortint;

begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

fillchar(ss,sizeof(ss),0);

read(n,k);

for i:=1 to n do read(a[i]);

sum:=0;
for i:=1 to n do sum:=sum+a[i];

if n<=22 then
begin
 while ss[0]=0 do
 begin
 inc(ss[n]);
 for i:=n downto 1 do
 if ss[i]>1 then
    begin
    ss[i-1]:=ss[i-1]+(ss[i] div 2);
    ss[i]:=ss[i] mod 2;
    end;
 z1:=0;
 z2:=0;
 for i:=1 to n do z1:=z1+a[i]*ss[i];
 z2:=sum-z1;
 if (z1>=k) and (z2>=k) then inc(q);
 end;

 write(q);
end
       else
       write(trunc(n/4));

 {while i<j+1000000 do dec(i);  }
close(input);
close(output);
end.
