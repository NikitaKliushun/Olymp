{Данченко Евгений Анатольевич, г.Солигорск, 8 класс, z1}
 program t2z1nd01;
 var t,s:ansistring;
     min,i,r:longint;
     f1,f2:text;
     
 begin
 
 assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 
  readln(f1,s);
  read(f1,t);
   if length(s)>=length(t)then min:=length(t)
                          else min:=length(s);
   for i:=1 to min do
    if s[length(s)-i+1]=t[length(t)-i+1]then
       r:=r+1
        else break;
   write(f2,r);
   
   close(f1);
   close(f2);
   end.