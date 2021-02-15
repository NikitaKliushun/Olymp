{Serokurov Sergei, Soligorsk}
program q4;
var f1,f2 : text; k,sk,i1,i2,i,j,ki,kj,blz,ost,skv,i1v,i2v : longint;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,k);
close(f1);
sk:=9999999;
i1:=1;
i2:=1;
for i:=1 to k do
 for j:=2 to k do
   if i*j<=k then
    begin
     ki:=i;
     kj:=j;
     blz:=ki-kj;
     if blz<0 then blz:=blz*-1;
     ost:=k-(ki*kj);
     skv:=blz+ost;
     i1v:=ki;
     i2v:=kj;
     if skv<sk then
                begin
                 i1:=i1v;
                 i2:=i2v;
                 sk:=skv;
                end;
    end;
for i:=1 to k do
 for j:=1 to k do
   if i*j<=k then
    begin
     ki:=i;
     kj:=j;
     blz:=ki-kj;
     if blz<0 then blz:=blz*-1;
     ost:=k-(ki*kj);
     skv:=blz+ost;
     i1v:=ki;
     i2v:=kj;
     if skv<sk then
                begin
                 i1:=i1v;
                 i2:=i2v;
                 sk:=skv;
                end;
    end;
assign(f2,'output.txt');
rewrite(f2);
writeln(f2,i1,' ',i2);
close(f2);
end.

