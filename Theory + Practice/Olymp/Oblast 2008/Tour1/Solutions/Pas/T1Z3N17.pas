{z3 Chudinov Vyacheslav Borisov Luceum 11'}
var p,k,kol,max,i,j,n,m,o:integer;
    a,b:array[1..5000] of integer;
    input,output:text;
begin
 i:=0;
 kol:=0;
 o:=1;
 max:=1;
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 read(input,n,m);
 readln(input);
 while not(eoln(input)) do
  begin
   inc(i);
   read(a[i]);
  end;
 for i:=1 to m do
  begin
   for j:=i-1 downto 2 do
    if a[j]=a[i] then
     begin
      o:=j;
      break;
     end;
   for j:=o to i do
    begin
     b[a[j]]:=a[j];
     if a[j]>max then max:=a[j];
    end;
   if (i>1)and not(a[i]=a[i-1]) then
    for p:=1 to max do
     begin
      if (not(b[p]<=0)) then
       if (a[i]<b[p]) then
        inc(kol)
        else if (a[i]>b[p]) then
         dec(kol);
     end
    else kol:=0;
   if i=1 then write(output,a[1],' ')
    else
     write(kol+a[j],' ');
     o:=1;
     kol:=0;
     max:=1;
  end;
 close(input);
 close(output);
end.
