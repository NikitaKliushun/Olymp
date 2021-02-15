//Акулов Максим, Несвижский район, 10 класс, задача № 1
var f,v: text;
    sum,n,i,k,vrem,Ans,e: integer;
    a,p,c: array [1..100] of integer;
    
    

Procedure InputData;
begin

assign (f,'input.txt');
reset (f);
readln (f,n,k);
for i:=1 to n do begin
                 read (f,a[i]);
                 readln (f,p[i]);
                 sum:=sum+a[i];
                 end;
i:=0;
close (f);
end;



procedure Dobav;
begin
while sum<k do begin
               inc(i);
               while a[i]<p[i]  do begin
                                   inc(e);
                                   c[e]:=i;
                                   inc(vrem);
                                   inc (a[i]);
                                   inc (sum);
                                   end;
               end;
end;



procedure OTHIMI;
begin
while k < sum do begin
               inc(i);
               while a[i]<>0 do begin
                                    inc(e);
                                    c[e]:=-i;
                                    inc(vrem);
                                    dec (a[i]);
                                    dec (sum);
                                    end;
               end;
end;



Procedure OutPutData ;
begin
assign (v,'output.txt');
rewrite (v);

writeln (v,vrem);

if Ans<>2 then begin
               for i:=1 to e do begin
                                if i<>e then writeln(v,c[i]) else write (v,c[i]);
                                end;
               end;
close (v);
end;



begin
InputData;
if sum < k then dobav else if k < sum then OTHIMI else  Ans:=2;

OutPutData;


end.