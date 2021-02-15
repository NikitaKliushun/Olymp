Program z5;
var
  f1,f2:text;
  a:array[0..201,0..201] of byte;
  n,m,k,i,j:integer;
  t:longint;
function Min(x,y:integer):integer;
  begin
    if x<y
       then Min:=x
       else Min:=y;
  end;
function Max(x,y:integer):integer;
  begin
    if x>y
       then Max:=x
       else Max:=y;
  end;
Procedure Light(x,y:integer);
  var 
     i,j:integer;
  begin
    for i:=x-1 downto Max(1,x-k) do
      if (a[i,y]=1) or (a[i,y]=2)
         then break
         else begin
                if a[i,y]=0 then t:=t-1;
                a[i,y]:=3;
              end;
    for j:=y-1 downto Max(1,y-k) do
      if (a[x,j]=1) or (a[x,j]=2)
         then break
         else begin
                if a[x,j]=0 then t:=t-1;
                a[x,j]:=3;
              end;
    for i:=x+1 to Min(n,x+k) do
      if (a[i,y]=1) or (a[i,y]=2)
         then break
         else a[i,y]:=3;
    for j:=y+1 to Min(m,y+k) do
      if (a[x,j]=1) or (a[x,j]=2)
         then break
         else a[x,j]:=3;
  end;
begin
  assign(f1,'in.txt');
  reset(f1);
  assign(f2,'out.txt');
  rewrite(f2);
  
  read(f1,n,m,k);
  for i:=1 to n do
    for j:=1 to m do
      read(f1,a[i,j]);
  for i:=0 to n+1 do
    begin
      a[i,0]:=1;
      a[i,m+1]:=1;
    end;
  for j:=0 to m+1 do
    begin
      a[0,j]:=1;
      a[n+1,j]:=1;
    end;
  t:=0;
   
  for i:=1 to n do
    for j:=1 to m do
      if a[i,j]=0
         then t:=t+1
         else if a[i,j]=2
                 then Light(i,j);
  write(f2,t);
  
  close(f1);
  close(f2);
end.