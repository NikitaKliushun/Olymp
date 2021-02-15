program z1;
var f:text;
    n,k,i,sumkol,ans:integer;
    kol,vm:array[0..1000]of longint;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,k);
for i:=1 to n do
 begin
  readln(f,kol[i],vm[i]);
  sumkol:=sumkol+kol[i];
 end;
close(f);
assign(f,'output.txt');
rewrite(f);
ans:=abs(k-sumkol);
writeln(f,ans);
i:=1;
if k-sumkol<0 then  while ans>0 do
                     begin
                      while kol[i]>0 do begin writeln(f,'-',i);ans:=ans-1;kol[i]:=kol[i]-1; end;
                      i:=i+1;
                     end;
if k-sumkol>0 then while ans>0 do
                     begin
                      while kol[i]<vm[i] do begin writeln(f,i);ans:=ans-1;kol[i]:=kol[i]+1; end;
                      i:=i+1;
                     end;
close(f);
end.