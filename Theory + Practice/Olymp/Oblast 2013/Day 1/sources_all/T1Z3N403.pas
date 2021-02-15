{Shmatkov Dmitry Vladimirovich, 11 klass, Slutsk}
program z;
 var
  a:array[1..420,1..420] of byte;
  i,j,n,m,l,r:longint;
  res:int64;
  t:char;

 function prov(u,d,x:longint):boolean;
  var i,j:longint;
      t:boolean;
  begin
   t:=true;
   for i:=0 to (d-u+1) div 2 do
    begin
     if (a[u+i][x]<>a[d-i][x]) then t:=false;
    end;
   prov:=t;
  end;

 begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  res:=0;
  fillchar(a,sizeof(a),0);

  readln(n,m);
  for i:=1 to n do
   begin
    for j:=1 to m do
     begin
      read(t);
      if t='1'
       then a[i][j]:=1
       else a[i][j]:=0;
     end;
    readln;
   end;

  for i:=1 to n-1 do
   for j:=i+1 to n do
    begin
     l:=1;
     r:=1;
     repeat
      while (not(prov(i,j,l)))and(l<=m)do inc(l);
      r:=l;
      while (prov(i,j,r+1))and(r<m) do inc(r);
      if l<=m
       then
        begin
         res:=res+(((r-l+1)*(r-l)) div 2)+(r-l+1);
        end;
      l:=r+1;
     until (r>m)or(l>m);
    end;

  write(res);

  close(input);
  close(output);
end.
