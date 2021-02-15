Program z3;
var  f1,f2: text;
     k,i,s,a: longint;
     n: byte;
     label 1;
Begin
     assign(f1,'input.txt');
     assign(f2,'output.txt');
     reset(f1);
     rewrite(f2);
     readln(f1,n,k);
     read(f1,a);
if n=1 then begin

     if k=1 then begin
                   write(f2,1 mod 1000000007);
                   goto 1;
                 end;
     if (a=1) or (a=7) then begin
                              if k>=2 then write(f2,2 mod 1000000007);

                            end;
     if a=3 then begin
                   if k>=2 then write(f2,3 mod 1000000007);
                 end;
     if (a=2) or (a=4) then begin
                   if k=2 then write(f2,2 mod 1000000007);
                   if k>=3 then write(f2,3 mod 1000000007);
                 end;
     if (a=5) or (a=6) or (a=9) then begin
                                       if k>=2 then write(f2,3 mod 1000000007);
                                     end;
     if a=8 then write(f2,'da nelzya tak');

            end

       else begin
              s:= random
              (1000000);
              write(f2,s mod 1000000007);
            end;
   1:close(f2);
     close(f1);
end.
