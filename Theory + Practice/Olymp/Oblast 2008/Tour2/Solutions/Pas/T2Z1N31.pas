{Терешкевич Евгений Николаевич, Молодеченский район. г.Молодечно, 11'класс}
program pr1;

var
 a: array [1..100] of longint;
 n,i,l: longint;
 m: longint;

Begin
 assign(input,'input.txt');
  reset(input);
 assign(output,'output.txt');
  rewrite(output);

 readln(n);
  for i:=1 to n do
   read(a[i]);

 while l<>1 do
  begin
   l:=1;
   for i:=1 to n-1 do
    if a[i]>a[i+1] then
     begin
      m:=a[i];
      a[i]:=a[i+1];
      a[i+1]:=m;
      l:=0;
     end;
  end;
 m:=0;
 for i:= (n div 2)+1 to n do
  m:=m+a[i];
 write(m);
 Close(input);
 close(output);
end.