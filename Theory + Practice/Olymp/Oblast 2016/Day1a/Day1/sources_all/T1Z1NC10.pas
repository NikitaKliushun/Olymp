program z1;
var
a: array [1..10,1..10] of byte;
b: array [1..4,1..2] of byte;
i,j,n,k,hod,code,sum,buk,met: longint;
s,p: string;
x: char;
begin
assign(input, 'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
for i:=1 to 10 do
        begin
        for j:=1 to 10 do
                begin
                read(x);
                if x='.' then a[i,j]:=0
                         else begin inc(sum); a[i,j]:=1; end;
                end;
        readln;
        end;
met:=sum;
readln(n);
for i:=1 to n do begin
readln(s);
k:=pos(' ',s);
p:=' ';
delete(p,1,1);
for j:=1 to k-1 do p:=p+s[j];
val(p,hod,code);
delete(s,1,k);
x:=s[1];
if ord(x)=ord('a') then buk:=1;
if ord(x)=ord('b') then buk:=2;
if ord(x)=ord('c') then buk:=3;
if ord(x)=ord('d') then buk:=4;
if ord(x)=ord('e') then buk:=5;
if ord(x)=ord('f') then buk:=6;
if ord(x)=ord('g') then buk:=7;
if ord(x)=ord('h') then buk:=8;
if ord(x)=ord('i') then buk:=9;
if ord(x)=ord('k') then buk:=10;
if (a[hod,buk]=1) then
                        begin
                        dec(sum);
                        if sum<=0 then begin write('GAME OVER'); EXIT; end else writeln('HIT');
                        end;
if (a[hod,buk]=0) then writeln('MISS');
end;
close(input);
close(output);
end.
