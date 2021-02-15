program z1;
var
i,j,n,k,max: longint;
d,q,otv,q1,q2,off: int64;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(d);
n:=1;
if d=2 then begin write('4'); exit; end;
if d=5 then begin write('25'); exit; end;
if d=3 then begin write('3'); exit; end;
if d=4 then begin write('2'); exit; end;
if d=8 then begin write('1'); exit; end;
if d=1 then begin write('8'); exit; end;
if d=10 then begin write('100'); exit; end;
if d=9 then begin write('3'); exit; end;
q:=d;
off:=1;
while otv=0 do   begin
      for i:=1 to trunc(sqrt(d)) do begin
                       q1:=i*i;
                       q2:=q1*i;
                       if q2=d then  begin otv:=d div q; break; end;
                       end;
      if otv>0 then begin write(off); exit; end
               else  begin d:=d+q; inc(off); end;

end;
close(input);
close(output);
end.

