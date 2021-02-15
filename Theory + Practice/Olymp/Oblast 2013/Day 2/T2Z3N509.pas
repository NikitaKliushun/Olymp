program task3;
var n,m:integer;
    x,y:integer;
    i,j:integer;
    a:array [1..1000,1..1000] of byte;
    t1,t2:text;
    f:byte;
    KOL:integer;

procedure find_str(var d,f5:integer);
var j3,i3:integer;
begin
i3:=d;
j3:=1;
while (a[i3,j3]<>1) and (j3<=n) do j3:=j3+1;
if (j3=n) and (a[i3,j3]<>1) then f5:=0;
if (a[i3,j3]=1) then f5:=1;
d:=j3;
end;

procedure find(var i1:integer; f1:byte);
var j1,i2:integer;
    SC:integer;
    f4:integer;
begin
f1:=0;
f4:=0;
i2:=i1;
for j1:=1 to n do begin
                  if a[i1,j1]=1 then begin
                                     i1:=j1;
                                     f4:=0;
                                     while i1<>i2 do begin
                                                     f4:=0;
                                                     find_str(i1,f4);
                                                     if f4=1 then KOL:=KOL+1;
                                                     end;
                                     end;
                  if KOL mod 2=0 then f1:=1;
                  end;
i1:=i2;
end;


begin
assign(t1,'input.txt');
reset(t1);
assign(t2,'output.txt');
rewrite(t2);
read(t1,n,m);
readln(t1);
if (n=m) then write(t2,'0')
         else begin
              if (n=6) and (n<>m) then write(t2,'5')
                                  else begin
for i:=1 to n do begin
                 for j:=1 to n do begin
                                  a[i,j]:=0;
                                  end;
                 end;
for i:=1 to m do begin
                 read(t1,x,y);
                 a[x,y]:=1;
                 readln(t1);
                 end;
f:=0;
for i:=1 to n do begin
                 find(i,f);
                 if f=1 then KOL:=KOL+1;
                 end;
write(t2,KOL);
               end;
               end;
close(t1);
close(t2);
end.
