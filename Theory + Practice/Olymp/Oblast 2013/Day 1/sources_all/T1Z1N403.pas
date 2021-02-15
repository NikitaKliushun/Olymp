{Shmatkov Dmitry Vladimirovich, 11 klass, Slutsk}
program z;
 const
  maxt=86400;
 var
  c:string;
  a:array[0..maxt+100] of longint;
  b,e:array[1..1000] of longint;
  h,m,s,temp,hh,mm,ss,i,j,n,t:longint;
 begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  fillchar(a,sizeof(a),0);

  readln(n,t);
  for i:=1 to 2*n do
   begin
    readln(c);

    hh:=ord(c[1])-ord('0');
    hh:=hh*10+ord(c[2])-ord('0');

    mm:=ord(c[4])-ord('0');
    mm:=mm*10+ord(c[5])-ord('0');

    ss:=ord(c[7])-ord('0');
    ss:=ss*10+ord(c[8])-ord('0');

    temp:=hh*3600+mm*60+ss;

    inc(a[temp]);
   end;

  j:=0;
  for i:=0 to maxt do
   begin
    while (a[i]>0)and(a[i+t]>0) do
     begin
      inc(j);
      b[j]:=i;
      e[j]:=i+t;
      dec(a[i]);
      dec(a[i+t]);
     end;
   end;

  for i:=1 to n do
   begin
    hh:=b[i] div 3600;
    b[i]:=b[i] mod 3600;
    mm:=b[i] div 60;
    ss:=b[i] mod 60;

    h:=e[i] div 3600;
    e[i]:=e[i] mod 3600;
    m:=e[i] div 60;
    s:=e[i] mod 60;

    if hh<10
     then write('0',hh,':')
     else write(hh,':');
    if mm<10
     then write('0',mm,':')
     else write(mm,':');
    if ss<10
     then write('0',ss,'-')
     else write(ss,'-');
    if h<10
     then write('0',h,':')
     else write(h,':');
    if m<10
     then write('0',m,':')
     else write(m,':');
    if s<10
     then write('0',s)
     else write(s);
    writeln;
   end;

  close(input);
  close(output);
end.
