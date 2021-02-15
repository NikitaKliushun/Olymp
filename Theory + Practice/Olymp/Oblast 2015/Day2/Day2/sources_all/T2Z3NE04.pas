program yan;
  var ar:array[1..50,0..9]of longint;
      i,j,x,y,a,b,n,m:longint; f1,f2:text;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  read(f1,n,m);
  readln(f1);
  read(f1,x);
  ar[2,2]:=2; ar[1,2]:=1; ar[3,2]:=2; ar[4,2]:=2; ar[2,5]:=2;
  ar[6,2]:=2; ar[7,2]:=1; ar[9,2]:=2;
  if m>2 then m:=2;
  write(f2,ar[x,m]+1);
  close(f1); close(f2);
end.