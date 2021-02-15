program zzz;
  var  f:array [1..2005] of longint;
       n,t,i,k,x,y,z,a,b,c:longint;
       v:integer;
       s,s1,s2,s3:string;



procedure inputdata;
begin
  assign(input,'input.txt');
  reset(input);
  readln(n,t);
  k:=0;
  for i:=1 to 2*n do
    begin
    k:=k+1;
    readln(s);
    s1:=s[1]+s[2];
    s2:=s[4]+s[5];
    s3:=s[7]+s[8];
    val(s1,a,v); f[k]:=a*3600;
    val(s2,a,v); f[k]:=f[k]+a*60;
    val(s3,a,v); f[k]:=f[k]+a;
    end;
end;

procedure sort;
  var  i,j,t:longint;
begin
  for i:=1 to 2*n-1 do
    for j:=1 to 2*n-i do
      if f[j]>f[j+1] then
                     begin
                     t:=f[j];
                     f[j]:=f[j+1];
                     f[j+1]:=t;
                     end;
end;

procedure time(x:longint; var a,b,c:longint);
begin
  a:=x div 3600;
  x:=x mod 3600;
  b:=x div 60;
  x:=x mod 60;
  c:=x;
end;

{procedure OutputData;
begin
  assign(output,'output.txt');
  rewrite(output);
  i:=1;
  while i<=2*n do
    begin
    time(f[i],x,y,z);
    if x div 10=0 then write('0',x,':')
                  else write(x,':');
    if y div 10=0 then write('0',y,':')
                  else write(y,':');
    if z div 10=0 then write('0',z)
                  else write(z,'-');
    time(f[i+1],x,y,z);
    if x div 10=0 then write('-','0',x,':')
                  else write('-',x,':');
    if y div 10=0 then write('0',y,':')
                  else write(y,':');
    if z div 10=0 then write('0',z)
                  else write(z);



    writeln;
    i:=i+2;
    end;
  close(output);
end;}
procedure sum(x,y,z:longint; var a,b,c:longint);
var    q,w,e:longint;
begin
  time(t,q,w,e);

  a:=x+q;
  b:=y+w;
  c:=z+e;

  if c>60 then
          begin
          b:=b+1;
          c:=c mod 60;
          end;
  if b>60 then
          begin
          a:=a+1;
          b:=b mod 60;
          end;

end;
procedure OutputData;
begin
  assign(output,'output.txt');
  rewrite(output);
  for i:=1 to n do
    begin
    time(f[i],x,y,z);
    if x div 10=0 then write('0',x,':')
                  else write(x,':');
    if y div 10=0 then write('0',y,':')
                  else write(y,':');
    if z div 10=0 then write('0',z,'-')
                  else write(z,'-');

    sum(x,y,z,a,b,c);

    if a div 10=0 then write('0',a,':')
                  else write(a,':');
    if b div 10=0 then write('0',b,':')
                  else write(b,':');
    if c div 10=0 then write('0',c)
                  else write(c);
    writeln;
   end;
  close(output);
end;
begin
  InputData;

  sort;

  OutputData;


end.
