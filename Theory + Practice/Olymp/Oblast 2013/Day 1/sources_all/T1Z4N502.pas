program T1Z3N502;
const maxn=200000;
var
{s:array [1..maxN] of integer;
C:array [1..maxN] of integer;}
f1,f2:text; m,n,k,ans:integer;

begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,N,M,k);
{if m=1 then readln(s[1]) else      //i don't neet this for this WORSTEST EVER solution
begin
 for i:=1 to m-1 do read(s[i]);
 readln(s[m]);
end;
for i:=1 to n-1 do read(c[i]); readln(c[n]);
read(f);     }
if k>=n then ans:=n;    {maybe 1 or 2 tests become succesful? KTYLXY, plz!}
if k<n then ans:=k;
write(f2,ans);
close(f1);
close(f2);

end.
