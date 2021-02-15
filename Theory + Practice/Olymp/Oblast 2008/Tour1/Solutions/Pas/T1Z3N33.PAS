{KOTOV PAVEL VYACHESLAVOVICH, Soligorsk,9*B klass,Z3}

program T1Z3N33;
type zzz=0..3000;
zzzzz=array[1..3000]of zzz;
var a,h,l:longint;
f1,f2:text;
n,m,x,q:zzz;
n1,m1,x1:zzzzz;

   procedure proc(n1:zzzzz;n:zzz;m1:zzzzz;m:zzz;var x1:zzzzz);
   var
   b,i,o,c,y,p,l:zzz;
   begin

       i:=1;
       for a:=1 to m do
       begin
          c:=1;
          o:=1;
           while m1[a]<>n1[o] do
           begin
               c:=c+1;
               o:=o+1;
           end;
           x1[a]:=c;

           if o>=2 then
           begin
              for y:=o downto 2 do
              begin
                 l:=n1[y-1];
                 n1[y-1]:=n1[y];
                 n1[y]:=l;
              end;
           end;


      end;

   end;






begin
   assign(f1,'input.txt');
   reset(f1);
   readln(f1,n,m);
   h:=0;
   for a:=1 to m do
   begin
   h:=h+1;
   read(f1,m1[h]);
   end;

    for q:=1 to n do
    n1[q]:=q;






   proc(n1,n,m1,m,x1);






   close(f1);
   assign(f2,'output.txt');
   rewrite(f2);




   for a:=1 to m do
   begin
      if a<>m then
      write(f2,x1[a],' ')
      else
      write(f2,x1[a]);
   end;

   close(f2);
end.
