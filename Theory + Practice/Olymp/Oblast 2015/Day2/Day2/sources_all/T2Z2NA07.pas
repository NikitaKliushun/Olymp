var i,q,e:longint;
    d:qword;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 read(d);
 q:=1;
 e:=0;
 i:=d;
 while e<>1 do
  begin
   if frac(exp(1/3*ln(d)))=0 then begin
                                   write(q);
                                   halt;
                                  end
                             else begin
                                   d:=d+i;
                                   inc(q);
                                  end;
  end;
  write(q);
 close(input);
 close(output);
end.
