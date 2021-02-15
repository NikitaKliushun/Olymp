var f:text;
    g:array[1..5000,1..5000]of integer;
    ma,rast:array[1..5000]of longint;
    j,x,y,z,n,i:longint;
    nal,used,usedmain:array[1..5000]of boolean;
    
procedure test(i:longint);
var j:longint;
begin
   used[i]:=true;
 for j:=1 to n do
  begin
   if (not used[j])and(g[i,j]>=0)
    then begin rast[j]:=rast[i]+g[i,j]; test(j);end;
  end;

  ma[i]:=rast[i];

  for j:=1 to n do
   if (ma[j]>ma[i])and(g[i,j]>=0)
    then ma[i]:=ma[j];
end;




procedure dfs(tek:longint);
var max,j,tekk,i:longint;
begin
 usedmain[tek]:=true;
 tekk:=0;
 max:=0;
 j:=0;
 for j:=1 to n do
  if (ma[j]>max)and(g[tek,j]>0)and(not usedmain[j])
   then begin max:=ma[j];tekk:=j;end;
   

  if tekk>0
   then
   begin
  for i:=1 to n do
   used[i]:=false;
  for i:=1 to n do
   begin
    rast[i]:=0;
    ma[i]:=0;
   end; g[tek,tekk]:=0;g[tekk,tek]:=0;nal[tek]:=true;test(1);end;

  for i:=1 to n do
   begin
    if (g[i,tek]>0)and(not usedmain[i])
     then dfs(i);
   end;

end;

begin
 assign(f,'input.txt');
 reset(f);
 read(f,n);
 for i:=1 to n do
  for j:=1 to n do
   g[i,j]:=-1;
 for i:=1 to n-1 do
  begin
   read(f,x,y,z);
   g[x,y]:=z;
   g[y,x]:=z;
  end;

  test(1);
 dfs(1);

 assign(f,'output.txt');
 rewrite(f);
 write(f,ma[1]);
 close(f);

 



end.