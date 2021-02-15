var n,k,min,ans,q,h:int64;
    i,j,jj,ii,m,mm,jjj:longint;
    a,b,c:array[1..1000000] of longint;
    f,v:text;
procedure qSort(low,high:longint);
var i,j,m,w:longint;
begin
i:=low;
j:=high;
m:=a[(i+j) div 2];

repeat
while a[i]<m do
inc(i);
while a[j]>m do
dec(j);

if i<=j then begin
             w:=a[i];
             a[i]:=a[j];
             a[j]:=w;
             inc(i);
             dec(j);
             end;

until i>j;

if j>low then qSort (low,j);
if i<high then qSort (i,high);
end;


begin
assign(f,'input.txt');
reset(f);
assign(v,'output.txt');
rewrite(v);


read(f,n,k);
for i:=1 to n do
begin
  read (f,a[i]);

  b[i]:=a[i];
end;

qSort(1,n);

ans:=0;
jj:=1;
if k mod 2 =0 then ans:=k
              else ans:=k+1;
for jjj:=1 to ans do
begin

min:=10000000;
m:=0;
mm:=0;
for i:=n downto 2 do
begin
 if (a[i]<>0) then
                     if (a[i-1]<>0) then  begin
                     q:=a[i]-a[i-1];
  if q<min then begin
                min:=q;
                m:=i;
                mm:=i-1;
                end;

end;                                  end;
 if (m<>0) and (mm<>0) then
 begin
 for ii:=n downto 1 do
 begin
 if b[ii]=a[m]  then begin
                    c[jj]:=ii;
                    inc(jj);
                    end
                        else
 if b[ii]=a[mm] then begin
                     c[jj]:=ii;
                     inc(jj);
                     end;
  end;
end;

if (m<>0) and (mm<>0) then  begin
a[m]:=0;
a[mm]:=0;
end;


end;

i:=1;
j:=2;
while c[i]<>0 do
begin
while c[j]<>0 do
begin
if c[i]=c[j] then c[j]:=-1;
inc(j);
end;
inc(i);
j:=i+1;
end;

i:=1;
write(v,ans);
writeln(v);
while h<>ans do
if c[i]<>-1 then begin
                 write(v,c[i],' ');
                 inc(h);
                 inc(i);
                 end
            else inc(i);
close(f);
close(v);
end.















