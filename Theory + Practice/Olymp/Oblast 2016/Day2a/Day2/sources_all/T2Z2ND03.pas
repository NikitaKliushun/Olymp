//////Savostin Anton Dmityevich Marjinagorskaya gimnasiya 9 klass
program zagotovka;
type mas=array[1..3000] of longint;
var f1,f2:text;
h,b:mas;
i,m,n,minr,minb,nminr,nminb:integer;



begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);

readln(f1,m,n);
for i:=1 to m do
 read(f1,h[i]);
 readln(f1);
for i:=1 to n do
 read(f1,b[i]);

 minb:=maxint;
 minr:=maxint;

for i:=1 to m do
 if h[i]<minr then begin minr:=h[i];nminr:=i;   end;
for i:=1 to n do
 if b[i]<minr then begin minb:=b[i];nminb:=i;   end;

for i:=1 to n do
 if (i<>nminb) and (minr+minb<h[2]+b[i]) then
  begin
  if nminr=1 then begin
  write(f2,nminb,' ',i);
  break; end
   else begin write(f2,i,' ',nminb);break;   end;
  end;
  
close(f1);
close(f2);
end.
