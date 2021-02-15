program T2Z1N47;
var N:longint;
    mas: array [1..101] of longint;

procedure inputdata;
var i:longint;
begin
assign (input, 'input.txt'); reset (input);

readln (N);

for i:=1 to n do read (mas [i]);

close (input);
end;

procedure qsort (l,r:longint);

var i,j,m,cc:longint;

begin
i:=l;
j:=r;
m:=mas [(i+j) div 2];

while i<j do
 begin
  while mas [i]<m do inc (i);
  while mas [j]>m do dec (j);
  if i<=j then
   begin
    cc:=mas [i];
    mas [i]:= mas [j];
    mas [j]:= cc;

    inc (i);
    dec (j);
   end;
 end;

if i<r then qsort (i,r);
if l<j then qsort (l,j);
end;

procedure solve;
var i,i2:longint;
    sum: int64;
begin
qsort (1,n);

sum:=0;
i2:=1;

for i:=(n div 2)+1 to n do
 begin
  sum := sum+mas[i]-mas [i2];
  inc (i2);
 end;

assign (output, 'output.txt'); rewrite (output);
writeln (sum);
close (output);
end;


BEGIN
inputdata;
solve;
END.
