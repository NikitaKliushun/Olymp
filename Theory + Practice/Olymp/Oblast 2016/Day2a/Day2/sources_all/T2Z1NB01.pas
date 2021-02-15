{Колячко Мария}
{ г. Березино }
{    Тур 2    }
{   Задача 1  }
var
 M,w,s,b,t,y,Ans,p,x:int64;
 i:longint;
 d:array[0..111111]of int64;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
  Read(M,W);
  for i:=1 to M do
     Read(d[i]);
  Read(s,b,t);
  p:=s;
  Ans:=0;
  for i:=1 to M do
   begin
     if d[i] >= t then
         begin
           x:=w-p+1;
           if x = w then x:=0;
           if x > t then y:=t+p-1
                    else y:=(t-x)mod w;
           if y = b then Inc(Ans);
         end;
     x:=(p+d[i])mod w;
     if x > 0 then p:=x
              else p:=w;
   end;
  writeln(Ans);
 close(input);
 close(output);
end.
