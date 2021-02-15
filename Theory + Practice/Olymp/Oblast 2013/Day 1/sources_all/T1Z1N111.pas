{Гончар Даниил Дмитриевич г.Солигорск 8 класс Z1}
program T1Z1N111;
  var
      a:array[1..100] of longint;
      b:array[1..100] of longint;
      n,t,i:longint;
      f1,f2:text;
begin
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 readln(f1,n,t);
  for i:=1 to n*2 do
   readln(f1,a[i]);

 for i:=1 to n*2 do
  begin
   if a[i]+t=a[i+1] then
   write(f2,a[i], '-', a[i+1]);
   if a[i+1]+t=a[i] then
   write(f2,a[i+1], '-', a[i]);
  end;
 close(f2);
 close(f1);
end.
