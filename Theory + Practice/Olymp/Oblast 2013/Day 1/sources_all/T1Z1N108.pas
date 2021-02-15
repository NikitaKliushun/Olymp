program zzz;
 var a:array [1..2012] of longint;
 i,j,n,pn,h,m,s,t:longint;
 h1,h2,m1,m2,s1,s2,c:char;

procedure Qsort(l,r:longint);
var i,j,t,x:longint;
 begin
  i:=l; j:=r; x:=a[l+random(r-l+1)];
  repeat
  while a[i]<x do inc(i);
  while x<a[j] do dec(j);
  if i<=j then
    begin
     t:=a[i];
     a[i]:=a[j];
     a[j]:=t;
     inc(i);
     dec(j);
    end;
  until i>j;
  if i<r then Qsort(i,r);
  if l<j then Qsort(l,j);
 end;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);

 readln(n,t);

 pn:=n*2;

 for i:=1 to pn do
  begin
    read(h1);
    read(h2);
    read(c);
    read(m1);
    read(m2);
    read(c);
    read(s1);
    readln(s2);
    h:=0; m:=0; s:=0;
    if h1<>'0' then h:=h+(ord(h1)-ord('0'))*10;
    h:=h+(ord(h2)-ord('0'));
    if m1<>'0' then m:=m+(ord(m1)-ord('0'))*10;
    m:=m+(ord(m2)-ord('0'));
    if s1<>'0' then s:=s+(ord(s1)-ord('0'))*10;
    s:=s+(ord(s2)-ord('0'));
    a[i]:=h*3600+m*60+s;
  end;

 Qsort(1,pn);

 for i:=1 to pn do
  begin
   j:=1;
   if a[i]<>0 then begin
   while a[j]-a[i]<>t do inc(j);
   if a[i] div 3600<10
    then
      write('0',a[i] div 3600,':')
    else
      write(a[i] div 3600,':');
   if (a[i] mod 3600) div 60 <10
    then
      write('0',(a[i] mod 3600) div 60,':')
    else
      write((a[i] mod 3600) div 60,':');
   if (a[i] mod 3600) mod 60 <10
    then
      write('0',(a[i] mod 3600) mod 60)
    else
      write((a[i] mod 3600) mod 60);
   write('-');
   if a[j] div 3600<10
    then
      write('0',a[j] div 3600,':')
    else
      write(a[j] div 3600,':');
   if (a[j] mod 3600) div 60 <10
    then
      write('0',(a[j] mod 3600) div 60,':')
    else
      write((a[j] mod 3600) div 60,':');
   if (a[j] mod 3600) mod 60 <10
    then
      write('0',(a[j] mod 3600) mod 60)
    else
      write((a[j] mod 3600) mod 60);
    a[i]:=0;
    a[j]:=0;

   if i<>n then writeln;
   end;
  end;
 close(input);
 close(output);
end.
