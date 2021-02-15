Program t1z1n604; {
Samusevich Ivan, 11 klass}
var
b:array [1..1010] of byte;
a:array [1..1010] of longint;
i,j,n,t,hh,mm,ss,c:longint;
k:longint;
s:string;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(n,t);
fillchar(a,sizeof(a),0);
fillchar(b,sizeof(b),0);
for i:=1 to n shl 1 do
 begin
  readln;
  read(s);
  val(copy(s,1,2),hh,k);
  val(copy(s,4,2),mm,k);
  val(copy(s,7,2),ss,k);
  a[i]:=hh*3600+mm*60+ss;
 end;
for i:=1 to (n shl 1)-1  do
 for j:=i+1 to n shl 1 do
  begin
   if a[i]>a[j] then begin
                      c:=a[j];
                      a[j]:=a[i];
                      a[i]:=c;
                     end;
  end;
for i:=1 to (n shl 1)-1 do
 for j:=i+1 to n shl 1 do
  begin
   if (a[i]+t=a[j]) and (b[i]<>1) and (b[j]<>1) then begin

                  c:=a[j];
  hh:=a[i] div 3600;
  a[i]:=a[i] mod 3600;
  mm:=a[i] div 60;
  a[i]:=a[i] mod 60;
  ss:=a[i];
  if hh<10 then write('0',hh,':')
           else write(hh,':');
  if mm<10 then write('0',mm,':')
           else write(mm,':');
  if ss<10 then write('0',ss,'-')
           else write(ss,'-');
  hh:=c div 3600;
  c:=c mod 3600;
  mm:=c div 60;
  c:=c mod 60;
  ss:=c;
  if hh<10 then write('0',hh,':')
           else write(hh,':');
  if mm<10 then write('0',mm,':')
           else write(mm,':');
  if ss<10 then write('0',ss)
           else write(ss);
  writeln; b[i]:=1; b[j]:=1;
  end;
 end;
close(input);
close(output);
end.

