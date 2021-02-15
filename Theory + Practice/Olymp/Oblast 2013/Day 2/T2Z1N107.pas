program T2Z1N107;
var i,n,k,j,s,c,m:integer;
    a,p,f:array[1..1000]of integer;

begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n,k);
s:=0;
for i:=1 to n do begin
        readln(a[i],p[i]);
        s:=s+a[i];
        end;
j:=1;
if s>k then
            begin
            m:=s-k;
            while m>0 do begin
             if a[i]>=1 then begin
                           a[i]:=a[i]-1;
                           m:=m-1;
                           c:=c+1;
                           f[j]:=-i;
                           inc(j);
                           end;
            if (i=n)and(m>0) then i:=0;
            inc(i);
            end;
            end;
if s<k then
            begin
            s:=k-s;
            i:=1;
            while s>0 do begin
             if a[i]<p[i] then begin
                               f[j]:=i;
                               a[i]:=a[i]+1;
                               s:=s-1;
                               c:=c+1;
                               inc(j);
                               end;
            if (i=n)and(s>0) then i:=0;
            inc(i);
            end;
            end;
writeln(c);
for i:=1 to c do
        writeln(f[i]);
close(input);
close(output);
end.
