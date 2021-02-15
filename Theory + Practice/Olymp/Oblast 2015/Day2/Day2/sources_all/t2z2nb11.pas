//хочу 100 баллов!!!
program t2z2nb11;
label 1;
var a,i,sc,v,g1:longint;g:real;
    f:text;
procedure galya;
begin

end;
Begin
 assign(f,'input.txt');reset(f);
 readln(f,a);
 close(f);
 g:=sqrt(sqrt(a));
 g1:=trunc(g);
 assign(f,'output.txt');rewrite(f);
  For i:=g1 to 31622 do
   begin
    v:=i*i*i;
    if (v>=a)and(v mod a=0)
     then goto 1;
   end;
1: sc:=v div a;
write(f,sc);
close(f);
end.

