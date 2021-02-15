program z1;
var a,b,c,d,e,f,g,n,sk,si:longint;
a1:array[1..100]of int64;
t1,t2:text;
BEGIN
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
readln(t1,n);
for a:=1 to n do read(t1,a1[a]);{SORTIROWKA}
   for a:=1 to n-1 do begin
     for b:=1 to n-1 do begin
       c:=a1[b+1];
       if a1[b]>=a1[b+1] then begin
       a1[b+1]:=a1[b];
       a1[b]:=c;
      end;
     end;
   end;



for a:=1 to n div 2 do sk:=sk+a1[a];{Summa krupe}
for a:=(n div 2)+1 to n do si:=si+a1[a];{Summa igroka}
e:=si-sk;
write(t2,e);
close(t2);
END.