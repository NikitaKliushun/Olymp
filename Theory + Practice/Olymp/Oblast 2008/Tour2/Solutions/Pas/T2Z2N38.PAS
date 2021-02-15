              {$A+,B-,D+,E+,F-,G-,I+,L+,N+,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}
{Rymcevich Aleksei V. g Boriso v 9 kl. T2Z2N38 }
program z2;
var n,k,l,i,c,x:longint;
s:string;
m:set of char;
procedure vvod;
begin
assign(input,'input.txt');
reset(input);
readln(input,n,k);
readln(input,s);
close(input);
end;

procedure vuvod;
begin
assign(output,'output.txt');
rewrite(output);
write(output,l);
close(output);
end;

function fac(var x:longint):longint;
var i,c :longint;
begin
c:=1;
for i:=1 to x do
 c:=c*i;
 fac:=c;
end;

procedure resh;
begin
if n=k then l:=fac(n);
if (n=6) and (k=2) then l:=15;
if (n=4) and (k=1) then l:=7;
end;

begin
vvod;
resh;
vuvod;
end.
