{Скоморощенко Александр Игоревич, Борисов, 9 ,4}
program T1Z4N601;
var
  a:array[1..200000] of longint;
  s:array[1..200000] of longint;
  b,c:array[1..200000] of byte;
  i,max,inf,look_s,m,n,k,f:longint;

procedure move_coin(q:longint);
 var
   i:longint;
 begin
   i:=q;
   while (i<>f) and (b[i]<>k) do
    begin
      b[i]:=b[i]+1;
      i:=a[i];
    end;
   if i=f then inf:=inf+1;
 end;

procedure start(e:longint);
 var
   i:longint;
 begin
   if e<=look_s then
    begin
      for i:=1 to m do
       begin
        if c[i]=0 then
         begin
           c[i]:=1;
           start(e+1);
           c[i]:=0;
         end;
       end;
    end
   else
    begin
      for i:=1 to look_s do
       begin
         if c[i]=1 then
         move_coin(s[i]);
       end;
      if inf>max then max:=inf;
      inf:=0;
      fillchar(b,0,0);
    end;
 end;


begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  readln(n,m,k);
  for i:=1 to m do read(s[i]);
  for i:=1 to n do read(a[i]);
  read(f);

  for look_s:=1 to m do start(1);

  write(max);

  close(input);
  close(output);
end.
