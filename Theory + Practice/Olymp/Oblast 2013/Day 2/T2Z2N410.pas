//Акулов Максим, Несвижский район, 10 класс, задача № 2
var f,v: text;
    i,k,m,min,n,ind,ins,e,j: integer;
    a,b: array [1..100] of integer;
begin
assign (f,'input.txt');
reset (f);
assign (v,'output.txt');
rewrite (v);

readln (f,n,k);

for i:=1 to n do begin
                 read (f,a[i]);
                 end;

while m<k do begin
             min:=MaxInt;
             for i:=1 to n do
             for j:=1 to n do if (abs(a[i]-a[j])<min) and (a[j]<>0) and (a[i]<>0) and (i<>j) then  begin
                                                                                             min:=abs(a[i]-a[j]);
                                                                                             ind:=i;
                                                                                             ins:=j;
                                                                                             end;
             inc (e);
             b[e]:=ind;
             inc (e);
             b[e]:=ins;
             
             a[ind]:=0;
             a[ins]:=0;
             m:=m+2;

              end;
              
writeln (v,m);
for i:=1 to m do write (v,b[i],' ');
close (f);
close (v);



end.