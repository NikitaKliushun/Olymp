{Новицкая Л., г.Солигорск, гимназия №1, 9Б, задача 3 тур 1}
program z1;
 var f:text;
     n,i,k,r:longint;
     a,b,c,t:uint64;
begin
 assign(f,'input.txt');
 reset(f);
 readln(f,n,k);
 for i:=1 to n do
  begin
   read(f,r);
   if(i mod 2=0)
    then begin
          a:=a*(1 shl r);
         end
    else begin
          a:=a*(1 shl r);
          a:=a+(1 shl r)-1;
         end;
  end;
 for i:=1 to k do
  begin
   read(f,r);
   if(i mod 2=0)
    then begin
          b:=b*(1 shl r);
         end
    else begin
          b:=b*(1 shl r);
          b:=b+(1 shl r)-1;
         end;
  end;
 c:=a xor b;
 close(f);
 assign(f,'output.txt');
 rewrite(f);
 t:=1 shl 62;
 while(c and t=0)and(t>0)do
    begin
     inc(r);
     t:=t shr 1;
    end;
 while(t>0)do
  begin
   r:=0;
   while(c and t>0)do
    begin
     inc(r);
     t:=t shr 1;
    end;
   if(r<>0)
    then write(f,r,' ');
   r:=0;
   while(c and t=0)and(t>0)do
    begin
     inc(r);
     t:=t shr 1;
    end;
   if(r<>0)
    then write(f,r,' ');
  end;
 close(f);
end.
