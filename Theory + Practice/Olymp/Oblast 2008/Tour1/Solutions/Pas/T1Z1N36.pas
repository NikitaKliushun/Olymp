program z1;
var a,b,c,d,e,f,g,max,k,h,w,min:longint;
a1:array[1..3,1..5000]of longint;
t1,t2:text;
BEGIN
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,k);
    h:=1;
    w:=0;
    a:=0;
    while (f<>1)and(h*w<=k) do begin{warianti stenu}
    if w=0 then begin w:=w+1;end;
    a:=a+1;
    max:=abs(h-w)+(k-(h*w));
    a1[1,a]:=h;
    a1[2,a]:=w;
    a1[3,a]:=max;
    e:=e+1;
    if (w+1)*h<=k then begin
    a:=a+1;
    w:=w+1;
    max:=abs(h-w)+(k-(h*w));
    a1[1,a]:=h;
    a1[2,a]:=w;
    a1[3,a]:=max;
    e:=e+1;
    h:=h+1;
    end
    else f:=1;
    end;


min:=1000;
for a:=1 to e do begin{poisk minimal'nogo}
if a1[3,a]<=min then begin min:=a1[3,a];h:=a1[1,a];w:=a1[2,a];
end;
end;
write (t2,h,' ',w);

close(t2);
close(t1);

END.

