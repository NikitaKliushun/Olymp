{KOTOV PAVEL VYACHESLAVOVICH, Soligorsk,9*B klass,Z1}
{$N+}
program T1Z1N33;
var f1,f2:text;
a1,y,a2,b,c,h,w,k:longint;
ppc:extended;
begin
   assign(f1,'input.txt');
   reset(f1);
   read(f1,k);
   close(f1);
   b:=trunc(sqrt(k));

   a1:=(k-b*b);
   if b<(k div b) then
     begin
      w:=(k div b)-b
     end
     else
     begin
      w:=b-(k div b);
     end;

   a2:=(k-((k div b)*b))+w;
   assign(f2,'output.txt');
   rewrite(f2);
   if a1<a2 then
   begin
     write(f2,b,' ',b);
   end
   else
   begin
     write(f2,(k div b),' ',b);
   end;
   close(f2);


end.