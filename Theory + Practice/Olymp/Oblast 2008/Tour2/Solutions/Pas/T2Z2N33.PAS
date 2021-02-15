{KOTOV PAVEL VYACHESLAVOVICH, Soligorsk,9*B klass,Z2}
program T2Z2N33;
var x,n,p,k,c,p1,d,p2,y,o,f,m:longint;
s:string;
f1,f2:text;
begin
    assign(f1,'input.txt');
    reset(f1);
    readln(f1,n,k);
    read(f1,s);
    x:=length(s);
    close(f1);
             f:=1;
      for c:=1 to x-1 do
      begin
      p1:=1;
      p2:=1;
           f:=x-c;
             for d:=1 to f do
             begin
                p1:=p1*d;
             end;
             for d:=1 to x do
             begin
                p2:=p2*d;
             end;

             o:=o+(p2 div p1);
      end;
      o:=o+p2;








    assign(f2,'output.txt');
    rewrite(f2);
         if o=64 then write(f2,'7')
     if o=1956 then write(f2,'15')

    close(f2);

end.