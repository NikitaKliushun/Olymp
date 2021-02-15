//Boben Vyachaslav Gymnasia 3 8 klass Borisov
var f1,f2:text;
    D:array[1..100010] of longint;
    i,j,M,W,s,b,t:longint;
    days,day,wCount,count:int64;

begin
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);

readln(f1,M,W);

for i:=1 to M do
  begin
    read(f1,D[i]);
    days:=days+D[i];
  end;

readln(f1,s,b,t);

count:=0;
day:=1;

wCount:=1;
while s<>b do
  begin
    inc(s);
    inc(day);
    if s>w
      then
        begin
          s:=1;
          inc(wCount);
        end;
  end;

wCount:=trunc((days-day+1)/w)-wCount;

j:=1;
while day>D[j] do
  begin
    day:=day-D[j];
    inc(j);
  end;
if day=t then inc(count);

for i:=1 to wCount do
  begin
    day:=day+W;
    while day>D[j] do
      begin
        day:=day-D[j];
        inc(j);
      end;
    if day=t then inc(count);
  end;

writeln(f2,count);
close(f1);
close(f2);
end.
