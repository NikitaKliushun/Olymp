{Барковский Николай Анатольевич,Воложенский район г.Воложин,9 класс,Z2}
var a,b,i,j:longint;
    q,w:qword;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 readln(a,b);
 if b<a then begin
              i:=a;
              a:=b;
              b:=i;
             end;
 w:=a+a;
 q:=0;
 for i:=1 to w do
  for j:=i to w do
   if i*j<=w then inc(q);
 if a<b then inc(q);
 write(q);
 close(input);
 close(output);
end.
