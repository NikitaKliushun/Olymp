{Shmatkov Dmitry Vladimirovich, 11 klass, Slutsk}
program z;
 const
  inf=100000;
 var
  a:array[1..1000,1..1000] of longint;
  color,k:array[1..1000] of longint;
  i,j,n,m,ci,cj,l,res,x,y:longint;

 procedure poisk(x,c:longint);
  var i:longint;
  begin
   for i:=1 to n do
    if (a[x][i]=1)and(color[i]<>c)
     then
      begin
       color[i]:=c;
       poisk(i,c);
      end;
  end;

 begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  read(n,m);
  for i:=1 to n do
   begin
    for j:=1 to n do a[i][j]:=inf;
    color[i]:=i;
    a[i][i]:=0;
   end;

  for i:=1 to m do
   begin
    read(x,y);
    a[x][y]:=1;
    a[y][x]:=1;
    inc(k[x]);
    inc(k[y]);
   end;

  for i:=1 to n do
   begin
    if color[i]=i then poisk(i,i);
   end;

  res:=0;

  for i:=1 to n do
   for j:=i+1 to n do
    begin
     if (color[i]<>color[j]) then
      begin
       ci:=i;
       cj:=j;
       for l:=1 to n do
        begin
         if (color[l]=i)and(k[l]<k[ci]) then ci:=l;
         if (color[l]=j)and(k[l]<k[cj]) then cj:=l;
        end;
       a[ci][cj]:=1;
       a[cj][ci]:=1;
       inc(res);
       inc(k[ci]);
       inc(k[cj]);
       poisk(ci,color[i]);
      end;
    end;

  for l:=1 to n do
   for i:=1 to n do
    for j:=1 to n do
     if a[i][j]>a[i][l]+a[l][j]
      then a[i][j]:=a[i][l]+a[l][j];

  for i:=1 to n do
   for j:=I+1 to n do
    if (a[i][j] mod 2=1)and(a[i][j]<>1)
     then
      begin
       a[i][j]:=1;
       a[j][i]:=1;
       inc(res);
      end;

  write(res);

  close(input);
  close(output);
end.




