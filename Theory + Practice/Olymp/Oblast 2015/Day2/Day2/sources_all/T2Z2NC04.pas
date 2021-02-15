{Неведомский Дмитрий Альбертович, 9Б, г.Жодино, Задача №2}
var d,i,j,x,y,z:int64;
    f:boolean;
    s:set of byte = [1, 8, 27, 64, 125, 216];
    fin,fout:text;
 begin
   assign(fin,'input.txt');
   reset(fin);
   readln(fin,d);
   close(fin);

   f:=false;
   i:=0; x:=0;
   while not f do
     begin
       x:=x+d;
       j:=0; y:=216; z:=127;
       if x in s then f:=true
         else
           begin
             while y<x do
               begin
                 z:=z+(6*j);
                 if j=0 then j:=7 else inc(j);
                 y:=y+z;
               end;
             if x=y then f:=true;
           end;
       inc(i);
     end;

   assign(fout,'output.txt');
   rewrite(fout);
   writeln(fout,i);
   close(fout);
 end.
