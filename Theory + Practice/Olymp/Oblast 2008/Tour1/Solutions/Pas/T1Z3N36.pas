program Z3;
var a,b,c,d,e,n,m,f,g,h,k,nax:longint;
a1,a2:array[1..65535]of longint;
t1,t2:text;
begin
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,n);
readln(t1,m);
for a:=1 to n do a1[a]:=a;{ZAPOLNENIE MASSIVA}


    for a:=1 to m do begin{Osnownoi}
    b:=1;
    read(t1,nax);
         while a1[b]<>nax do begin b:=b+1;end;{POISK}
    write(t2,b,' ');

    k:=a1[b];
    e:=b+1;
    while a1[1]<>k do begin
    e:=e-1;
    f:=a1[e-1];
    a1[e-1]:=k;
    a1[e]:=f;
    end;
    end;


    close(t2);
end.
