{Chopchits Alexander Sergeevich Soligorskiy raion 9'"B"klass z1}
program t1z1n51;
var  f1,f2:text;
     wk,hk,a,h1,w1,kfcr2,kfcr1,k1,korcel,h,w,k:longint;
     kor:real;
  begin
assign(f1,'input.txt');
reset(f1);
readln(f1,k);
close(f1);
kor:=sqrt(k);
korcel:=trunc(kor);
k1:=k-(korcel*korcel);
kfcr1:=k1;
h:=korcel;
w:=korcel;

h1:=korcel+1;
w1:=korcel;
a:=w1*h1;
kfcr2:=(k-a)+1;
if kfcr1<kfcr2
then
  hk:=h
  else
 hk:=h1;

  if kfcr1<kfcr2
then
  wk:=w
  else
 wk:=w1;


  if a>k
  then
  begin
  wk:=w;
  hk:=h;
  end;

  if kfcr1=kfcr2
  then
  begin
  wk:=w1;
  hk:=h1;
  end;

 assign(f2,'output.txt');
 rewrite(f2);
 write(f2,wk,' ',hk);
 close(f2);


end.






