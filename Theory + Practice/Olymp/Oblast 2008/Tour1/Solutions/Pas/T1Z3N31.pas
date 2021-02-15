{Терешкевич Евгений Николаевич, Молодеченский район, г. Молодечно, 11' "А"класс}
program pr1;

  var
 a,b,c:array[1..1000000]of longint;
  n,m,i,j,s,k:longint;

begin
 assign(input,'input.txt');
  reset(input);
 assign(output,'output.txt');
  rewrite(output);

 readln(n,m);
 for i:=1 to m do
  read(b[i]);

 for i:=1 to n do
  a[i]:=i;


 for k:=1 to m do
  for i:=1 to n do
   if b[k]=a[i] then
    begin
     c[k]:=i;
     s:=a[i];
     for j:=i downto 2 do
     a[j]:=a[j-1];
     a[1]:=s;
    end;
 for i:=1 to m do
  write(c[i],' ');

 close(input);
 close(output);
 end.