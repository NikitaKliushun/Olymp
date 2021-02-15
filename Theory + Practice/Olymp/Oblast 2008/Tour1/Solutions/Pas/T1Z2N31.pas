{Терешкевич Евгений Николаевич, Молодеченский Район, г. Молодесно, 11' "А" класс №2}
program pr1;
 label
  l1,l2;

 var
  a,b: array [1..50] of longint;
  n,k,i:integer;
  l,m,s,u,z,j,h: longint;

 begin

  assign(input,'input.txt');
   reset(input);
  assign(output,'output.txt');
   rewrite(output);


   readln(n,k);
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

l:=0;
     for i:=1 to n do
      b[i]:=a[i];


  for j:=1 to n-1 do
   begin
    u:=0;
    s:=a[j];
    b[j]:=0;
     if s>=k then
      begin
       b[j]:=0;
       goto l1;
      end;


   for i:=j+1 to n do
     begin
      s:=s+b[i];
      b[i]:=0;
      if s>=k then
       goto l1;
     end;

   l1:
   for i:=1 to n do
    u:=u+b[i];
   if (u>=k) and (s>=k) then
    l:=l+2;
     for i:=1 to n do
      b[i]:=a[i];
   end;
    if a[n]>=k then
    begin
     u:=0;
     for i:=n-1 downto 1 do
      u:=u+b[i];
     if (b[n]>=k) and (u>=k) then
     l:=l+2;
    end;


{    for i:=1 to n do
     begin
      if a[i]>=(k div 2) then
       if n-i>0 then
        begin
         u:=0;
         s:=a[i];
         b[i]:=0;
         for j:=i downto 1 do
          s:=s+b[j];
          b[j]:=0;
          if s>=k then
           goto l2;
         l2:
         for j:=1 to n do
          u:=u+b[j];
         if (s>=k) and (u>=k) then
          l:=l+2;
         end;
        end;}
        for i:=1 to n do
         b[i]:=a[i];
   { for z:=1 to n do}
    for i:=1 to n-1 do
     begin
     u:=0;
      for j:=1 to n do
         b[j]:=a[j];
     if a[n]+b[i]>=k then
      begin
       s:=b[n]+b[i];
       b[n]:=0;
       b[i]:=0;
      for j:=1 to n do
      u:=u+b[j];
      end;
     if (s>=k) and (u>=k) then
      l:=l+2;
     end;
  writeln(l);
{   for i:=1 to n do
    write(a[i],' ');}


  close(input);
  close(output);
end.
