{Shmatkov Dmitry Vladimirovich, 11 klass, Slutsk}
program z;
 var
  from,too,next:array[1..210000] of longint;
  first,d,met,start:array[1..210000] of longint;
  res,i,j,n,m,k,x,f:longint;

 function min(x,y:longint):longint;
  begin
   if x>y
    then min:=y
    else min:=x;
  end;

 function dfs(x:longint):longint;
  var i,j:longint;
  begin
   met[x]:=1;
   j:=first[x];
   while j<>-1 do
    begin
     if met[too[j]]<>1
      then
       d[x]:=d[x]+dfs(too[j]);
     j:=next[j];
    end;
   d[x]:=d[x]+start[x];
   if x<>f then d[x]:=min(d[x],k);
   dfs:=d[x];
   met[x]:=0;
  end;

 begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  fillchar(d,sizeof(d),0);

  read(n,m,k);

  for i:=1 to m do
   begin
    read(x);
    start[x]:=1;
   end;

  for i:=1 to n do first[i]:=-1;

  for i:=1 to n do
   begin
    read(x);
    from[i]:=x;
    too[i]:=i;
    next[i]:=first[x];
    first[x]:=i;
   end;

  read(f);

  res:=dfs(f);

  write(res);

  close(input);
  close(output);
end.

