//Ratkevich Arthur
program T1Z1ND10;
var A:array[0..11,0..13] of char;
i,k,w,p,n,q:byte;
w1:char;
f1,f2:text;

      procedure vod(var w1:char;
      var w,q:byte);
      var op:char;
      begin
      read(f1,q,op,w1);
      if w1='a' then w:=1;
      if w1='b' then w:=2;
      if w1='c' then w:=3;
      if w1='d' then w:=4;
      if w1='e' then w:=5;
      if w1='f' then w:=6;
      if w1='g' then w:=7;
      if w1='h' then w:=8;
      if w1='i' then w:=9;
      if w1='k' then w:=10;
      end;

      procedure odn(var q,w:byte);
      begin
       if (A[q+1,w]<>'#') and
       (A[q-1,w]<>'#') and
       (A[q,w+1]<>'#') and
       (A[q,w-1]<>'#') and
       (A[q+1,w]<>'#')then
       BEGIN
       writeln (f2,'DEAD');
       writeln (f2,'GAME OVER');
       END;

      end;


begin
      Assign(f1,'input.txt');
      Reset(f1);
      Assign(f2,'output.txt');
      Rewrite(f2);

  for i:=1 to 10 do
  for k:=1 to 12 do
  read(f1,A[i,k]);
  readln(f1,n);

for p:=1 to n do
begin
vod(w1,q,w);
if A[q,w]<>'#' then
writeln(f2,'Miss');
if A[q,w]='#' then
begin
odn(q,w);
break
end;
end;
close(f1);
close(f2);
end.
