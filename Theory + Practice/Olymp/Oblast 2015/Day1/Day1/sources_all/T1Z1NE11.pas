{Новицкая Л., г.Солигорск, гимназия №1, 9Б, задача 1 тур 1}
program z1;
 var f:text;
     a,b:array[1..100] of longint;
     n,k,i,t,r:longint;
begin
 assign(f,'input.txt');
 reset(f);
 readln(f,n,k);
 for i:=1 to n do
  begin
   read(f,r);
   inc(a[r]);
   if(a[r]>=k)
    then begin
          inc(b[r]);
          a[r]:=a[r]-k;
          inc(t);
         end;
  end;
 close(f);
 assign(f,'output.txt');
 rewrite(f);
 writeln(f,t);
 for i:=1 to 100 do
  begin
   while(b[i]>0)do
    begin
     write(f,i,' ');
     dec(b[i]);
    end;
  end;
 close(f);
end. 