{Karnauh Maksim,T2Z1NA12}
program T2Z1NA12;
var f1,f2:text;
i,m,w,s,b,t,a,dn,k,j:longint;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

readln(f1,m,w);
readln(f1);
readln(f1,s,b,t);

close(f1);

assign(f1,'input.txt');
reset(f1);

j:=s;
dn:=1;
k:=0;
readln(f1);
for i:=1 to m do
 begin
 read(f1,a);
 while (dn<=a) do
  begin

   while (j<=w) and (dn<=a) do
    begin
    if (j=b) and (dn=t) then k:=k+1;
    dn:=dn+1;
    j:=j+1;
    end;

  if j=w+1 then j:=1;



  end;
 dn:=1;
 end;

 write(f2,k);


close(f1);
close(f2);
end.