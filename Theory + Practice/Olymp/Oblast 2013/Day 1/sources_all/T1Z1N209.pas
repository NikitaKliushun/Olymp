//Филипович Антон Федорович, МГОЛ, 10 А класс
var a,p:array[1..10000] of longint;
    code,h,m,s,i,n,t,j:longint;
    x,s1:string;
procedure transfer(i:longint);
  begin
    h:=a[i] div 3600;
    a[i]:=a[i] mod 3600;
    m:=a[i] div 60;
    a[i]:=a[i] mod 60;
    s:=a[i];
  end;
begin

  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);


  readln(n,t);

  fillchar(a,sizeof(a),0);
  fillchar(p,sizeof(p),0);

  for i:=1 to 2*n do
    begin
      readln(x);
      s1:=x;
      delete(s1,3,6);
      val(s1,h,code);

      s1:=x;
      delete(s1,1,3);
      delete(s1,3,3);
      val(s1,m,code);

      s1:=x;
      delete(s1,1,6);
      val(s1,s,code);

      a[i]:=h*3600+m*60+s;
    end;

  for i:=1 to 2*n-1 do
    for j:=1 to 2*n-i do
      if a[j]>a[j+1]
        then begin
               h:=a[j];
               a[j]:=a[j+1];
               a[j+1]:=h;
             end;

  for i:=1 to 2*n do
    for j:=i+1 to 2*n do
      if (a[j]-a[i]=t)and(p[j]+p[i]=0)
        then begin
               transfer(i);
               if h<10 then write('0',h)
                       else write(h);
               write(':');
               if m<10 then write('0',m)
                       else write(m);
               write(':');
               if s<10 then write('0',s)
                       else write(s);
               write(#45);

               transfer(j);
               if h<10 then write('0',h)
                       else write(h);
               write(':');
               if m<10 then write('0',m)
                       else write(m);
               write(':');
               if s<10 then write('0',s)
                       else write(s);

               writeln;

               p[i]:=1;
               p[j]:=1;
             end;

  close(input);
  close(output);
end.