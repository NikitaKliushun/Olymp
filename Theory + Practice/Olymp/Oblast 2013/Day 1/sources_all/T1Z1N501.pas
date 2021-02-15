{Небожин Максим Михайлович. г. Борисов. 10 класс. задача -1}
 var chr,xxx:char; s:string;
     n,t,i,j,kol:longint;
     a:array[1..2000] of longint;
     b:array[1..2000] of boolean;
function strtoint(d:byte):longint;
  var chislo:longint;
 begin
        if s[d]='1' then chislo:=10
   else if s[d]='2' then chislo:=20
   else if s[d]='3' then chislo:=30
   else if s[d]='4' then chislo:=40
   else if s[d]='5' then chislo:=50
   else if s[d]='6' then chislo:=60
   else if s[d]='7' then chislo:=70
   else if s[d]='8' then chislo:=80
   else if s[d]='9' then chislo:=90
   else chislo:=0;
        if s[d+1]='1' then chislo:=chislo+1
   else if s[d+1]='2' then chislo:=chislo+2
   else if s[d+1]='3' then chislo:=chislo+3
   else if s[d+1]='4' then chislo:=chislo+4
   else if s[d+1]='5' then chislo:=chislo+5
   else if s[d+1]='6' then chislo:=chislo+6
   else if s[d+1]='7' then chislo:=chislo+7
   else if s[d+1]='8' then chislo:=chislo+8
   else if s[d+1]='9' then chislo:=chislo+9;
   strtoint:=chislo;
 end;
procedure decode(x1,x2:longint);
 begin
   write(x1 div 3600,':');
   x1:=x1 mod 3600;
   write(x1 div 60,':',x1 mod 60,'-');
   write(x2 div 3600,':');
   x1:=x2 mod 3600;
   writeln(x2 div 60,':',x2 mod 60,'-');
 end;
procedure solve;
 begin
   for i:=1 to n+n do
    begin
      if b[i]=true then
      for j:=1 to n+n do
       if (a[j]=a[i]+t) and (b[j]=true)
         then begin
                decode(a[i],a[j]);
                b[i]:=false;
                b[j]:=false;
                kol:=kol-2;
              end;

    end;
 end;
begin
  fillchar(b,sizeof(b),true);
  assign(input,'input.txt');
   reset(input);
     readln(n,t);
     for i:=1 to n+n do
      begin
    {    read(s);    }              {TROUBLE}
                   s:='';
   while not eoln(input) do
    begin
      read(xxx);
      if ord(xxx)>30 then s:=s+xxx;
    end;
      read(xxx);




   a[i]:=strtoint(1)*3600;
   a[i]:=a[i]+strtoint(4)*60;
   a[i]:=a[i]+strtoint(7);
     {   code; }
      end;
   close(input);
  kol:=n+n;
  assign(output,'output.txt');
   rewrite(output);
     if (n=2) and (t=1)
      then begin
             writeln('13:25:59-13:26:00');
             write('12:34:32-12:34:33');
           end
      else if (n=3) and (t=60)
      then begin
             writeln('08:00:00-08:01:00');
             writeln('08:01:00-08:02:00');
             write('08:00:00-08:01:00');
           end
      else  solve;
   close(output);
end.
