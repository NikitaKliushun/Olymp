{Неведомский Дмитрий Альбертович, 9Б, г.Жодино, Задача №1}
var s,t:ansistring;
    n,m,i,x:integer;
    f:boolean;
    fin,fout:text;
 begin
   assign(fin,'input.txt');
   reset(fin);
   readln(fin,s);
   readln(fin,t);
   close(fin);

   n:=length(s);
   m:=length(t);
   i:=0; x:=0;
   f:=false;
   while (not f) and (i<n) and (i<m) do
     begin
       if s[n-i]=t[m-i] then inc(x) else f:=true;
       inc(i);
     end;

   assign(fout,'output.txt');
   rewrite(fout);
   write(fout,x);
   close(fout);
 end.