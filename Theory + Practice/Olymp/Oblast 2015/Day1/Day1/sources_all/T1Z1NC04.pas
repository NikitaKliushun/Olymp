 {Неведомский Дмитрий Альбертович, г.Жодино, 9Б, задача №1}
 var max,m,n,k,i,x,y:integer;
     a:array[1..10000] of byte;
     b:array[1..2000] of byte;
     fin,fout:text;

 begin
   assign(fin,'input.txt');
   reset(fin);
   n:=0; k:=0;
   read(fin, n);
   readln(fin, k);
   x:=0;
   for i:=1 to 2000 do
     b[i]:=0;
   for i:=1 to n do
     begin
       read(fin, a[i]);
       b[a[i]]:=b[a[i]] + 1;
       if a[i]>x then x:=a[i];
     end;
   close(fin);
   i:=2; max:=b[1] div k; m:=max; y:=0;
   while (i<=x) do
     begin
       y:= b[i] div k;
       if (y > 0) and (y < max) then max:=y;
       if (y > 0) then m:=m+y;
       inc(i);
     end;

   assign(fout, 'output.txt');
   rewrite(fout);
   if m=0 then writeln(fout,0) else
   begin
     writeln(fout, m);
     for i:=1 to x do
       begin
         y:= b[i] div k;
         if y > 0 then
           for n:=1 to y do
             write(fout, i,' ');
       end;
     end;
   close(fout);
 end.
