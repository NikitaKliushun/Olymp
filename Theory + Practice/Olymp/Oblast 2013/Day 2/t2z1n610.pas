var n,i,j:byte; k:integer; m,s:longint;
a,p,x:array[1..100] of integer;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,k);
 for i := 1 to n do
  readln(f1,a[i],p[i]);
i:=1; j:=0;  m:=0;
 while (k>0) and (i<=n) do
  begin
   if a[i]<p[i] then begin
                      dec(k);
                      inc(a[i]);
                      inc(j);
                      x[j]:=i;
                      inc(m);
                      inc(s,a[i]);
                     end
                else  begin 
                       inc(i);
                       inc(s,a[i])
                      end 
  end;
 
               writeln(f2,m);
                for i := 1 to j do
               writeln(f2,x[i]);
              
close(f1);
close(f2)
end.















