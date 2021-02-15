program task1;
var n,k:integer;
    a,p,x:array [1..100] of integer;
    i:integer;
    t1,t2:text;
    z,z1:integer;
    f:char;
    j,j1:integer;
    begin
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,n,k);
readln(t1);
for i:=1 to n do begin
                 read(t1,a[i],p[i]);
                 readln(t1);
                 end;
z:=0;
for i:=1 to n do begin
                 z:=z+a[i];
                 end;
z1:=z;
if z>k then f:='1';
if z<k then f:='2';
if z=k then f:='3';
j1:=1;
z:=0;
if f='2' then begin
              for i:=1 to n do begin
                            if (p[i]>a[i]) and (k>0) then begin
                                                           z:=p[i]-a[i];
                                              for j:=1 to z do begin
                                                               if k>0 then
                                                               begin
                                                               x[j1]:=i;
                                                               j1:=j1+1;
                                                               k:=k-1;
                                                               end;
                                                               end;
                                                            end;
                               end;
              write(t2,j1-1);
              writeln(t2);
              for i:=1 to j1-1 do begin
                                writeln(t2,x[i]);
                                end;
              end;
if f='1' then begin
              for i:=1 to n do begin
                            if (a[i]>0) and (z1>k) then begin
                                                           z:=p[i];
                                              for j:=1 to z do begin
                                                               if z1>k then
                                                               begin
                                                               x[j1]:=i-2*i;
                                                               j1:=j1+1;
                                                               z1:=z1-1;
                                                               end;
                                                               end;
                                                            end;
                               end;
              write(t2,j1-1);
              writeln(t2);
              for i:=1 to j1-1 do begin
                                writeln(t2,x[i]);
                                end;
              end;
if f='3' then write(t2,0);
close(t1);
close(t2);
end.

