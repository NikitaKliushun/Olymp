var a:longint;
    f,v:text;
begin
assign(f,'input.txt');
reset(f);
assign(v,'output.txt');
rewrite(v);

read(f,a);
if (a>=23) and (a<=44) then write (v,'44');
if (a>=45) and (a<=88) then write (v,'88');
if (a>=89) and (a<=176) then write (v,'176');
if (a>=177) and (a<=352) then write (v,'352');
if (a>=353) and (a<=484) then write (v,'484') ;
close(f);
close(v);
end.