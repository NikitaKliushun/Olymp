{Shmatkov Dmitry Vladimirovich, 11 klass, Slutsk}
program z;
 var
  a,p,add:array[1..110] of longint;
  i,j,n,k,summ:longint;
 begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  fillchar(add,sizeof(add),0);
  summ:=0;

  read(n,k);

  for i:=1 to n do
   begin
    read(a[i],p[i]);
    summ:=summ+a[i];
   end;

  writeln(abs(summ-k));

  if summ>a[i]
   then
    begin
     for i:=1 to n do
      while (a[i]>0)and(abs(summ-k)>0) do
       begin
        dec(summ);
        dec(a[i]);
        dec(add[i]);
       end;

     for i:=1 to n do
      for j:=-1 downto add[i] do writeln('-',i);
    end
   else
    begin
     for i:=1 to n do
      while (a[i]<p[i])and(abs(summ-k)>0) do
       begin
        inc(summ);
        inc(a[i]);
        inc(add[i]);
       end;

     for i:=1 to n do
      for j:=1 to add[i] do writeln(i);
    end;

  close(input);
  close(output);
end.