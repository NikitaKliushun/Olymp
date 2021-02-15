{KOTOV PAVEL VYACHESLAVOVICH, Soligorsk,9*B klass,Z1}
program T2Z1N33;
type nn=2..100;
aa=0..50000000;
ar=array[1..100]of aa;
var o:longint;
x:aa;
n:nn;
a:ar;
f1,f2:text;
          procedure proc(n:nn;a:ar;var vi:aa);
          var c,max,maxi,s,shrek,b,u,d:aa;
          begin
          shrek:=0;
          u:=0;
          max:=a[1];
          maxi:=1;
           for d:=1 to (n div 2) do
           begin
           max:=a[1];
           maxi:=1;
             for c:=1 to n do
             begin
                if max<a[c]
                then
                begin
                   max:=a[c];
                   maxi:=c;
                end;
             end;
             u:=u+1;
           shrek:=shrek+max;
           a[maxi]:=0;
           end;
          s:=0;
          for c:=1 to n do
          begin
             if a[c]<>0 then
             s:=s+a[c];
          end;
            vi:=shrek-s;
          end;
begin
   assign(f1,'input.txt');
   reset(f1);
   readln(f1,n);
   for o:=1 to n do
   begin
     read(f1,a[o]);
   end;
   close(f1);
   proc(n,a,x);
   assign(f2,'output.txt');
   rewrite(f2);
   write(f2,x);
   close(f2);


end.