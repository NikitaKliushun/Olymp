{Колячко Мария Николаевна}
{Березино, 8 класс}
{Задача 3}
uses math;
type
  mas = array[1..2,0..100000] of longint;

var
  d1:array[0..100000] of longint;
  a,b:array[1..2,0..100000] of longint;
  f,c,i,k,t,dl,x,n,y,m,m1,n1:longint;

procedure P(var l:mas;var xx:longint);
 var
   yy:longint;
 begin
  for i:=1 to xx div 2 do
   begin
     yy:=l[1,i];
     l[1,i]:=l[1,xx-i+1];
     l[1,xx-i+1]:=yy;
     yy:=l[2,i];
     l[2,i]:=l[2,xx-i+1];
     l[2,xx-i+1]:=yy;
   end;
 end;

procedure sol(var xx,yy:longint);
 begin
  inc(d1[dl]);
  dec(xx);
  dec(yy);
 end;


begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
  read(n,m);
  n1:=0;m1:=0;dl:=0;
  for i:=1 to n do
   begin
     read(a[1,i]);
     if i mod 2 = 1 then a[2,i]:=1
                    else a[2,i]:=0;
     inc(n1,a[1,i]);
   end;
  for i:=1 to m do
    begin
      read(b[1,i]);
      if i mod 2 = 1 then b[2,i]:=1
                     else b[2,i]:=0;
      inc(m1,b[1,i]);
    end;
  P(a,n);P(b,m);
  k:=1;t:=1;f:=2;
  while (k <= n) and (t <= m) do
   begin
    x:=a[2,k] and 1;
    y:=b[2,t] and 1;
    if x = y then if f = 1 then Sol(a[1,k],b[1,t])
                           else
                              begin
                                 inc(dl);
                                 d1[dl]:=0;
                                 f:=1;
                                 Sol(a[1,k],b[1,t])
                              end
             else
               if f = 0 then Sol(a[1,k],b[1,t])
                        else
                            begin
                                inc(dl);
                                d1[dl]:=0;
                                f:=0;
                                sol(a[1,k],b[1,t]);
                            end;
    if a[1,k] = 0 then inc(k);
    if b[1,t] = 0 then inc(t);
   end;
   c:=0;
  if k <= n then
             for i:=k to n do
               if a[1,i] > 0 then
               if a[2,i] = 0 then
                                if f = 1 then inc(d1[dl],a[1,i])
                                         else
                                            begin
                                             inc(dl);
                                             d1[dl]:=a[1,i];
                                             f:=1;
                                            end
                              else if f = 0 then inc(d1[dl],a[1,i])
                                            else
                                              begin
                                                inc(dl);
                                                d1[dl]:=a[1,i];
                                                f:=0;
                                              end;
  if t <= m then
          for i:=t to m do
            if b[1,i] > 0 then
             if b[2,i] = 0 then
                       if f = 1 then inc(d1[dl],b[1,i])
                                else
                                    begin
                                      inc(dl);
                                      d1[dl]:=b[1,i];
                                      f:=1;
                                end
                           else if f = 0 then inc(d1[dl],b[1,i])
                                         else
                                           begin
                                            inc(dl);
                                            d1[dl]:=b[1,i];
                                            f:=0;
                                           end;
  if n1 = m1 then dec(dl);
  for i:=dl downto 2 do
    write(d1[i],' ');
  write(d1[1]);
 close(input);
 close(output);
end.
