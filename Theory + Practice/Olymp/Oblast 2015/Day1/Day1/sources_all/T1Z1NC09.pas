//Залевский А.А., г. Дзержинск, 8 класс, задача 1.
program t1z1nc09;
var
  a:array[1..100000]of longint;

  s,b,i,n,k,v:longint;
  t1,t2:text;
Begin
  assign (t1,'input.txt'); reset (t1);
  assign (t2,'output.txt'); rewrite (t2);

  s:=0;
  read (t1,n,k);
  for i:=1 to n do
    Begin
      read (t1,b);
      a[b]:=a[b]+1;
    end;
  for i:=1 to n do s:=s+a[i] div k;
  writeln (t2,s);
  for i:=1 to n do
    if a[i]>0 then
      Begin
        while a[i] div k>0 do
          Begin
            write (t2,i,' ');
            a[i]:=a[i]-k;
          end;
      end;
  close (t1);
  close (t2);
end.
