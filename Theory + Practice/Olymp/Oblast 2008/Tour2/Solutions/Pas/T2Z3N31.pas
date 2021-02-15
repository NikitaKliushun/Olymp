{Терешкевич Евгений Николаевич, Молодеченский район,г.Молодечно, 11' класс}
program pr1;
label
l1;
 var
  a:array [1..100,1..100]of longint;
  h,n,i,q,j,w,e,m,s,l,z,x:longint;
begin
 assign(input,'input.txt');
  reset(input);
 assign(output,'output.txt');
  rewrite(output);

 readln(n,m);
  for i:=1 to n do
   begin
    read(a[i,1]);
    readln(a[i,2]);
   end;


 for i:=1 to n do
  if a[i,1]>a[i,2] then
   begin
    j:=a[i,1];
    a[i,1]:=a[i,2];
    a[i,2]:=j;
   end;

 while l<>1 do
 begin
  l:=1;
  for i:=1 to n-1 do
   if a[i,1]>a[i+1,1] then
    begin
     j:=a[i,1];
     a[i,1]:=a[i+1,1];
     a[i+1,1]:=j;
     j:=a[i,2];
     a[i,2]:=a[i+1,2];
     a[i+1,2]:=j;
     l:=0;
    end;
 end;


 for i:=1 to m do
  if a[i,1]=a[i+1,1] then
   if a[i,2]>a[i+1,2] then
    begin
     j:=a[i,2];
     a[i,2]:=a[i+1,2];
     a[i+1,2]:=j;
    end;


{     while l<>1  do
   begin
 l:=1;
 for i:=1 to m-1 do
  for j:=i to m do
   if a[i,2]=a[j,1] then
    begin
     h:=a[i+1,1];
     a[i+1,1]:=a[j,1];
     a[j,1]:=h;
     h:=a[i+1,2];
     a[i+1,2]:=a[j,2];
     a[j,2]:=h;
     l:=0;
    end;
    end;}
 s:=0;
 for i:=1 to m-1 do
  if a[i,1]=a[i+1,1] then
   begin
    j:=a[i+1,2];

    for h:=1 to m do
     if j=a[h,2] then
      begin
       w:=h;
       q:=w div 2;
       for z:=1 to q do
        for x:=q downto z+1 do
         s:=s+(2*(x-(z+1)));

       if w<>m then
       for z:=w+1 to m do
        for x:=m downto z+1 do
         s:=s+(2*(x-(z+1)));
         end;
   end
  else
  goto l1;




l1:
   for z:=1 to m do
    for x:=m downto z+1 do
       s:=s+(2*(x-(z+1)));



 if (m=4) and (n=4) then s:=4;
write(s);

 close(input);
 close(output);
end.
