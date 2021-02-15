{Новицкая Л., г.Солигорск, гимназия №1, 9Б, задача 2 тур 1}
program z1;
 var f:text;
     a,b,k,i,t:longint;
     n:int64;
begin
 assign(f,'input.txt');
 reset(f);
 readln(f,a,b);
 close(f);
 if(a=b)
  then begin
        t:=a+b;
       end;
 if(a>b)
  then begin
        t:=b+b+1; 
       end;
 if(b>a) 
  then begin
        t:=a+a+1;
       end;
 k:=trunc(sqrt(t));
 for i:=1 to k do
  begin
   if((t div i)-(i-1)>0)
    then n:=n+(t div i)-(i-1);
  end;
 assign(f,'output.txt');
 rewrite(f);
 writeln(f,n); 
 close(f);
end. 