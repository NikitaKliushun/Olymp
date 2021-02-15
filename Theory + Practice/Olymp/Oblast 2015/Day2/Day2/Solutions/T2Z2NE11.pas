{Новицкая Л., г.Солигорск, 9 Б, тур 2 задача 2}
program z1;
 var f:text;
     i,t:longint;
     r,k:uint64;
begin
 assign(f,'input.txt');
 reset(f);
 readln(f,k);
 close(f);
 t:=trunc(sqrt(k));
 r:=1;
 if(k/t=t)and(t>1)
  then r:=t
  else
  begin
  i:=2; 
 while(i<=t-1)and(i<=k)do
  begin
   while(k mod (i*i*i)=0)do
    begin
     k:=k div(i*i*i);
    end;
   while(k mod (i*i)=0)do
    begin
     k:=k div (i*i);
     r:=r*i;
    end;
   inc(i); 
  end;
 r:=r*k*k;
 end;
 assign(f,'output.txt');
 rewrite(f);
 writeln(f,r);
 close(f);
end.
