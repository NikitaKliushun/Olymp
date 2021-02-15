{Барковский Николай Анатольевич,г. Воложин,10,2}
var k,y,i,q,n:longint;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 read(k,y);
 q:=1073741823;
 i:=1;
 while (n<k) and (i<=1073741824) do
  begin
   if q and i>=y
    then begin
          inc(n);
          q:=q and i;
         end;
   inc(i);
  end;
 if n<k
  then write('-1')
  else begin
        q:=1073741823;
        for i:=1 to 1073741824 do
         if q and i>=y
          then begin
                write(i,' ');
                q:=q and i;
                dec(k);
                if k=0 then break;
               end;
       end;
 close(input);
 close(output);
end.
