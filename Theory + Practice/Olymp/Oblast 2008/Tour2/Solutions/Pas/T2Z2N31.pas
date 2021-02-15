{Терешкевич Евгений Николаевич, Молодеченский район, г.Молодечно, 11'класс}
program pr1;
 label
  l1;
 var
  n,k,i,j,h,m,s,l,v,f,d:longint;
  a:array[1..1000000]of char;
begin
 assign(input,'input.txt');
  reset(input);
 assign(output,'output.txt');
  rewrite(output);

 readln(n,k);
  for i:=1 to n do
   read(a[i]);

 i:=0;
  while i<=n-1 do
  begin
   l1:
   i:=i+1;
   for j:=i+1 to n do
    begin
     l:=0;
     for h:=i to j-1 do
{     begin   }
      for f:=h+1 to j do
      if a[h]=a[f] then
       begin
        l:=l+1 ;
        if l>=k then
         goto l1
{        else
         l:=0;}
       end
      else
       l:=0;
     if l>=k then
      goto l1;
     if l<k then
      s:=s+1;
 {    end;}
   end;
   end;
 s:=n+s;

 write(s);




{ for i:=1 to n do
  write(a[i],' ');}

 close(input);
 close(output);
 end.