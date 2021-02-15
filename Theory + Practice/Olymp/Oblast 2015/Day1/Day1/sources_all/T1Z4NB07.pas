program Z4;
var
  n,x,y,z,i,j,min:longint;
  a:array[0..100,0..100] of longint;
  f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  readln(f1,n);

  for i:= 1 to n-1 do
   begin
    read(f1,x,y,z);
    a[x,y]:=z;
   end;

  min:=a[x,y];
  for i:= 1 to n do
    for j:= 1 to n do
        if (min>a[i,j]) and (a[i,j]>0) then min:=a[i,j];


  writeln(f2,min);

  close(f1);
  close(f2);
end.
