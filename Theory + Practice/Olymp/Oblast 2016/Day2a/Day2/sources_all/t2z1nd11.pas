program z1;
var m,w,s,b,t,ans,w1,x,i:longint;
    d:array[1..100000] of longint;
    f1,f2:text;
begin
   assign(f1,'input.txt');
   reset(f1);
   assign(f2,'output.txt');
   rewrite(f2);

   read(f1,m,w);
   for i:=1 to m do
       read(f1,d[i]);
   read(f1,s,b,t);
  // write(f2,s);
   for i:=1 to m do
     begin
       if s<b then w1:=b-s+1;
       if s=b then w1:=1;
       if s>b then w1:=w-s+b+1;

       x:=w1;   //write( f2,x,' ');
       while x<=d[i] do
         begin
           if x=t then inc(ans); //write(f2,x,' ');
           x:=x+w;
         end;
      // write(f2,s,' ');
       s:= s + (d[i] mod w);
       if s>7 then s:=s-7;

     end;

   write(f2,ans);

   close(f1);
   close(f2);
end.
