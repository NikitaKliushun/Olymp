program z1;
var k,i,r,res,h,w,h1,w1,d,res1:longint;

BEGIN
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
reset(output);
 readln(k);
 r:=round(sqrt(k));
 d:=(r-r)+(k-r*r);
 h:=10000;
     while h<>0 do
        begin
          if i=0 then begin h:=r;w:=r;end;
          inc(i);
          dec(h);
          res1:=(w-h)+(k-w*h);
          if res1<res then begin h1:=h;w1:=w;end;
          inc(w);
          res1:=(w-h)+(k-w*h);
          if res1<res then begin h1:=h;w1:=w;end;

        end;



 write(h1,' ');
 write(w1);
close(input);
close(output);
END.
