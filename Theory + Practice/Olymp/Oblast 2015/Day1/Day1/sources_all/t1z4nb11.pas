Program t1z4nb11;
var n,x,y,h,min,i:integer;f:text;
Begin
assign(f,'input.txt');reset(f);
readln(f,n);
read(f,x,y,h);
  min:=h;
For i:=1 to 100 do
 begin
 read(f,x,y,h);
 if (h<min)and(h<>0)
 then min:=h; end;
 close(f);
 assign(f,'output.txt');rewrite(f);
writeln(f,min);
close(f);
end.