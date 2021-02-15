program ss;
var a,c,i,x:longint;
    f1,f2:text;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);
        read(f1,a,c);
        x:=1;
        for i:=a to c div 2 do
         if (i mod a=0)and(c mod i=0) then x:=x+1;
        write(f2,x);
        close(f1);
        close(f2);
end.
