{Новицкая Л., г.Солигорск, 9 Б, тур 2 задача 1}
program z1;
 var f:text;
     c:char;
     a,b:string;
     n,t,k,i,u:longint;
begin
 assign(f,'input.txt');
 reset(f);
 readln(f,a);
 readln(f,b);
 i:=length(a);
 u:=length(b);
 while(i>0)and(u>0)and(a[i]=b[u])do
  begin
   inc(t);
   dec(i);
   dec(u);
  end;
 close(f); 
 assign(f,'output.txt');
 rewrite(f);
 writeln(f,t);
 close(f);
end. 