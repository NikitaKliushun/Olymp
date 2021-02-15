program task2;
var n,k:integer;
    d,d1:array[1..100000] of integer;
    z:array[1..100000] of integer;
    i,j,j2,i1,min:integer;
    TEK,ZAm,tek2,kol:integer;
    t1,t2:text;
begin
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,n,k);
readln(t1);
for i:=1 to n do begin
                 read(t1,d[i]);
                 end;
for i:=1 to n do begin
                 d1[i]:=d[i];
                 end;
i:=1;
while i<=n do begin
              TEK:=d[i];
              i1:=i;
              for j:=i to n do begin
                               if TEK>d[j] then begin
                                                ZAM:=d[j];
                                                d[j]:=TEK;
                                                d[i1]:=ZAM;
                                                i1:=i1+1;
                                                end;
                               end;
              i:=i+1;
              end;
TEK:=0;
ZAM:=100000;
for i:=n downto 1 do begin
                     TEK:=d[i];
                     min:=i-1;
                     while min>=1 do begin
                     TEK2:=d[min];
                     if TEk-TEK2<ZAM then begin
                     KOL:=2;
                     for j:=1 to i-2 do begin
                                      if (d[j]<TEK)
                                      and (d[j]>TEK2) then KOL:=KOL+1;
                                      if (d[j]=TEK)
                                      or (d[j]=TEK2) then KOL:=KOL+1;
                                        end;
                                          if KOL>=K then begin
                                                         ZAM:=TEK-TEK2;
                                                         j2:=1;
                                                         for j:=1 to i do
                                                         begin
                                      if (d[j]<TEK)
                                      and (d[j]>TEK2) then begin
                                                           z[j2]:=d[j];
                                                           j2:=j2+1;
                                                           end;
                                      if (d[j]=TEK)
                                      or (d[j]=TEK2) then begin
                                                          z[j2]:=d[j];
                                                          j2:=j2+1;
                                                          end;
                                                         end;
                                                         end;
                                          end;
                              min:=min-1;
                              end;
                      end;
write(t2,zam);
writeln(t2);
for j:=1 to j2-1 do begin
                    i:=1;
                    while z[j]<>d1[i] do i:=i+1;
                    if z[j]=d1[i] then d1[i]:=0;
                    if j<j2-1 then write(t2,i,' ');
                    if j=j2-1 then write(t2,i);
                    end;
close(t1);
close(t2);
end.

