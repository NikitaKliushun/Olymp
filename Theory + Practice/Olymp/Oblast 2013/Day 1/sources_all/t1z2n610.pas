var a, b, c, i, k  : longint;
f1, f2 : text;
{procedure pochta(i:int64);
begin
 if i= a+1 then
             if (i mod a=0) and (c mod i=0) then write(i,' ')
           else if (i mod a=0) and (c mod i=0) then begin
                                                     write(i,' ');
                                                     pochta(i-1);
                                                    end;

end;}
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,a,c);
k:=0;
 if a=c then write(f2,'1')
        else
         begin
          for i := a to c do
           if (i mod a=0) and (c mod i=0) then inc(k);
            write(f2,k)
         end;
close(f1);
close(f2);
end.

