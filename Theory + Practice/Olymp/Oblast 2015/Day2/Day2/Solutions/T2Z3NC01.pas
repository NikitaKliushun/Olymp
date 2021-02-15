//Козелько Никита Сергеевич, 11 класс, город Солигорск, задача 3
var a:array[0..9,0..9] of longint;
    b:array[0..9] of longint;
    q, w:array[-1..100] of longint;
    s:ansistring;
    n, k, l, i, kk, balans, ans, ll, e:longint;

begin

assign(input, 'input.txt'); reset(input);
assign(output, 'output.txt'); rewrite(output);

b[0]:=6;
b[1]:=3;
b[2]:=4;
b[3]:=4;
b[4]:=4;
b[5]:=5;
b[6]:=5;
b[7]:=3;
b[8]:=7;
b[9]:=5;

a[0, 0]:=b[0];
a[0, 1]:=2; a[1, 0]:=2;
a[0, 2]:=3; a[2, 0]:=3;
a[0, 3]:=1; a[3, 0]:=1;
a[0, 4]:=2; a[4, 0]:=2;
a[0, 5]:=4; a[5, 0]:=4;
a[0, 6]:=3; a[6, 0]:=3;
a[0, 7]:=2; a[7, 0]:=2;
a[0, 8]:=6; a[8, 0]:=6;
a[0, 9]:=3; a[9, 0]:=3;

a[1, 1]:=b[1];
a[1, 2]:=1; a[2, 1]:=1;
a[1, 3]:=1; a[3, 1]:=1;
a[1, 4]:=3; a[4, 1]:=3;
a[1, 5]:=1; a[5, 1]:=1;
a[1, 6]:=2; a[6, 1]:=2;
a[1, 7]:=1; a[7, 1]:=1;
a[1, 8]:=2; a[8, 1]:=2;
a[1, 9]:=1; a[9, 1]:=1;

a[2, 2]:=b[2];
a[2, 3]:=2; a[3, 2]:=2;
a[2, 4]:=1; a[4, 2]:=1;
a[2, 5]:=2; a[5, 2]:=2;
a[2, 6]:=1; a[6, 2]:=1;
a[2, 7]:=1; a[7, 2]:=1;
a[2, 8]:=3; a[8, 2]:=3;
a[2, 9]:=3; a[9, 2]:=3;

a[3, 3]:=b[3];
a[3, 4]:=2; a[4, 3]:=2;
a[3, 5]:=2; a[5, 3]:=2;
a[3, 6]:=2; a[6, 3]:=2;
a[3, 7]:=2; a[7, 3]:=2;
a[3, 8]:=2; a[8, 3]:=2;
a[3, 9]:=3; a[9, 3]:=3;

a[4, 4]:=b[4];
a[4, 5]:=2; a[5, 4]:=2;
a[4, 6]:=3; a[6, 4]:=3;
a[4, 7]:=1; a[7, 4]:=1;
a[4, 8]:=3; a[8, 4]:=3;
a[4, 9]:=2; a[9, 4]:=2;

a[5, 5]:=b[5];
a[5, 6]:=3; a[6, 5]:=3;
a[5, 7]:=1; a[7, 5]:=1;
a[5, 8]:=5; a[8, 5]:=5;
a[5, 9]:=3; a[9, 5]:=3;

a[6, 6]:=b[6];
a[6, 7]:=2; a[7, 6]:=2;
a[6, 8]:=4; a[8, 6]:=4;
a[6, 9]:=1; a[9, 6]:=1;

a[7, 7]:=b[7];
a[7, 8]:=2; a[8, 7]:=2;
a[7, 9]:=1; a[9, 7]:=1;

a[8, 8]:=b[8];
a[8, 9]:=4; a[9, 8]:=4;

a[9, 9]:=b[9];

readln(n, k);
readln(s);

w[1]:=1;
l:=length(s);
for i:=1 to l do
 begin
 q[i]:=ord(s[i])-48;
 if i>1 then w[i]:=0;
 end;

 ans:=0;
if n<=6 then
begin
while (w[0]=0) do
 begin

 balans:=0; kk:=0;
  for i:=1 to l do
  begin
  if b[q[i]]>b[w[i]] then begin
                          kk:=kk+b[q[i]]-a[q[i], w[i]];
                          balans:=balans+b[q[i]]-b[w[i]];
                          end
                     else begin
                          kk:=kk+b[q[i]]-a[q[i], w[i]];
                          balans:=balans-(b[w[i]]-b[q[i]]);
                          end;
  end;
 if (balans=0)and(kk<=k) then begin
                              inc(ans);
                              {for e:=1 to l do
                               write(w[e]);
                              writeln; }

                              if ans>=1000000007 then ans:=ans mod 1000000007;
                              end;
 inc(w[l]);
 ll:=l;

 while (w[ll]>=10) do
  begin
  w[ll-1]:=w[ll-1]+(w[ll] div 10);
  w[ll]:=w[ll] mod 10;
  dec(ll);
  end;

 end;
end
else ans:=1;
writeln(ans);

close(input); close(output);

end.
