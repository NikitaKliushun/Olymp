var
i,n,k:integer;
q,a,p:array[1..1001]of integer;
s:text;
procedure Umen(summ:integer);
var
z,h,j:integer;
begin
j:=1;h:=2;z:=0;
  while summ>k do begin
    if a[j]>=1 then begin
      dec(a[j]);
      q[h]:=j*-1;
      inc(j);
      dec(summ);
      inc(z);
      inc(h);
    end
    else
      inc(j);
    if j>n then j:=1;
  end;
  q[1]:=z;
end;
procedure Uvel(summ:integer);
var
z,h,j:integer;
begin
j:=1;h:=2;z:=0;
  while summ<k do begin
    if (a[j]>=0)and(a[j]<p[j])then begin
      inc(a[j]);
      q[h]:=j;
      inc(j);
      inc(summ);
      inc(z);
      inc(h);
    end
    else
      inc(j);
    if j>n then j:=1;
  end;
  q[1]:=z;
end;
procedure Check;
var
sum,i:integer;
begin
sum:=0;
  for i:=1 to n do
    sum:=sum+a[i];
  if sum>k then Umen(sum);
  if sum<k then Uvel(sum);
  if sum=k then q[1]:=0;
end;
begin
assign(s,'input.txt');
reset(s);
readln(s,n,k);
  for i:=1 to n do
    readln(s,a[i],p[i]);
close(s);
Check;
assign(s,'output.txt');
rewrite(s);
  for i:=1 to q[1]+1 do
    writeln(s,q[i]);
close(s);
end.
