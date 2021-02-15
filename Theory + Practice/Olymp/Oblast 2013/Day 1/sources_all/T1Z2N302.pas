program zz;
 var a,b,c,i:longint;
       f:text;
begin
assign(f,'input.txt');
reset(f);
read(f,a,c);
close (f);
b:=0;
i:=a;
while i<=c do
        begin
         if (c mod i=0)
          then inc(b);
        inc(i,a);
        end;

assign(f,'output.txt');
rewrite(f);
write(f,b);
close(f);
end.
