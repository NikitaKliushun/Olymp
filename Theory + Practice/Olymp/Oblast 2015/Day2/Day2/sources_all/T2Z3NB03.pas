program z1;
var
i,j,n,s,k,max,otv: longint;

begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(n,k);
if n=1 then
begin
read(s);
if (s=1) and (k>=3) then write('2')
                    else  if (s=1) and (k<3) then write('1');
if (s=2) and (k>=2) then begin if k>=3 then write('3')
                                           else write('2'); end
                    else  if (s=2) and (k<2) then write('1');
if (s=3) and (k>=2) then write('3')
                    else if (s=3) and (k<2) then write('1');
if (s=4) and (k>=2) then begin if k>=3 then write('3')
                                 else write('2'); end
                    else if (s=4) and (k<2) then write('1');
if (s=5) and (k>=2) then write('3')
                    else if (s=5) and (k<2) then write('1');
if (s=6) and (k>=2) then begin if k>=4 then write('3')
                                 else write('2'); end
                    else if (s=6) and (k<2) then write('1');
if (s=7) and (k>=2) then write('2')
                    else if (s=7) and (k<2) then write('1');
if (s=8) then write('1');
if (s=9) and (k>=2) then begin if k>=4 then write('3')
                                 else write('2'); end
                    else if (s=9) and (k<2) then write('1');
if (s=0) then write('1');
end;
close(input);
close(output);
end.
