{Kononchuk Igor Vladimirovich, Minskii raen, 9, 1}
Program stena;
Var
 n,i,k,h,w,a,b,c,d,e,p,o,o1,o2,o3,k1,k2:longint;
 f,r:text;
BEGIN
 assign(f,'D:\BP\bin\Olimp\Z1\input.txt');
 assign(r,'D:\BP\bin\Olimp\Z1\output.txt');
 reset(f);
 rewrite(r);
 readln(f,k);
 for i:=1 to 100 do
  begin
   a:=i*i;
   if a<=k then b:=i;
  end;
 d:=b;
 a:=b*b;
 c:=k-a;
 if c=0
  then write(r,b,' ',b)
  else
  begin
 if b<=c
  then
   begin
   c:=c-b;
   d:=d+1;
   if b<=c
    then
     begin
      c:=c-b;
      d:=d+1;
     end;
    end;

 if c<>0
  then
  begin
   p:=b-c;
   o:=p*d+c;
   o1:=o div c;
   n:=b-p;
   p:=d+o1;
   o:=o mod c;

   o2:=abs(b-d);
   o3:=abs(n-d);
   k1:=o2+c;
   k2:=o3+o;

   if k1>k2 then write(r,n,' ',p)
            else write(r,b,' ',d);
  end
  else write(r,b,' ',d);
  end;
 close(f);
 close(r);
END.