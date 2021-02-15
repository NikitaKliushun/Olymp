program z1;
var h,m,c,s:string;
    hh,mm,cc,n,p,i,code,j,per:integer;
    sum:array[1..4000]of longint;
    f:text;
    pr:array[1..4000]of boolean;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,p);
for i:=1 to 2*n do
 begin
  readln(f,s);
  h:=copy(s,1,2);val(h,hh,code);
  m:=copy(s,4,2);val(m,mm,code);
  c:=copy(s,7,2);val(c,cc,code);
  sum[i]:=(hh*3600)+(mm*60)+cc;
 end;
close(f);
for i:=1 to 2*n-1 do
 for j:=1 to 2*n do
  begin
   if (sum[i]+p=sum[j])and(pr[i]=false) then begin sum[j]:=maxint;pr[i]:=true; end;
  end;
for i:=1 to 2*n do
 for j:=1 to 2*n do
  begin
   if sum[i]<sum[j] then begin per:=sum[i];sum[i]:=sum[j];sum[j]:=per; end;
  end;
assign(f,'output.txt');
rewrite(f);
for i:=1 to n do
 begin
  hh:=sum[i] div 3600;mm:=(sum[i] mod 3600)div 60;cc:=sum[i] mod 60;
  if hh<10 then write(f,'0',hh,':') else write(f,hh,':');
  if mm<10 then write(f,'0',mm,':') else write(f,mm,':');
  if cc<10 then write(f,'0',cc) else write(f,cc);
  write(f,'-');sum[i]:=sum[i]+p;
  hh:=sum[i] div 3600;mm:=(sum[i] mod 3600)div 60;cc:=sum[i] mod 60;
  if hh<10 then write(f,'0',hh,':') else write(f,hh,':');
  if mm<10 then write(f,'0',mm,':') else write(f,mm,':');
  if cc<10 then write(f,'0',cc) else write(f,cc);
  writeln;
 end;
close(f);
end.