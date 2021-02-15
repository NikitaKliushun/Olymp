program z1;
var
h,w:integer;
pr:integer;
x,z,k,i:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(k);
h:=trunc(sqrt(k));
pr:=9999;
if h=1 then begin write('1 2'); halt;   end;
 for w:=h-2 to h+2 do
  begin
 z:=(abs(h-w)+(k-(h*w)));
 if (pr>z)and(k>=h*w)and(h>0)and(w>0) then begin pr:=z; x:=w  end;
   end;

write(h,' ',x);
close(input);
close(output);
end.
