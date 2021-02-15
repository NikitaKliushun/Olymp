//Акулов Максим, Несвижский район, 10 класс, задача № 3
var f,v: text;
    i,x,y,n,m,Ans: integer;
    a: array [1..100,1..100] of integer;
begin
assign (f,'input.txt');
reset (f);
assign (v,'output.txt');
rewrite (v);

readln (f,n,m);


for i:=1 to m do begin
                 readln(f,x,y);
                 a[x,y]:=1;
                 a[y,x]:=1;
                 end;
                 

                 
                 
                 




















Ans:=((n - m) * 10) div 3;





write (v,Ans);

close (f);
close (v);



end.