{Колячко Мария}
{г. Березино}
{Тур 1}
{Задача 2}
const
  inf = 1 shl 30-1;
var
  d:array[0..111111]of longint;
  x,y,k,i,l,p,T,E,F:longint;

procedure Sol(x,val:longint);
var j:longint;
begin
  if f = -1 then exit;
  if x > e then begin
                  p:=val;
                  if p > inf then exit;
                  if p = y then exit;
                  Inc(t);
                  d[t]:=val;
                  if t = k then begin
                                  f:=-1;
                                  exit;
                                end;
                  exit;
                end;
  for j:=0 to 1 do
   begin
     if f = -1 then exit;
     if f = 0 then Sol(x+1,val+j*(1 shl x));
   end;
end;


begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
  Read(k,y);
  x:=y;l:=0;
  while x > 0 do
   begin
     Inc(l);
     x:=x shr 1;
   end;
  //p:=1 shl(l+1);
  t:=0;
  e:=30-l;
  Sol(l+1,y);
  d[k]:=Y;
  x:=d[1];
  if y = 0 then for i:=1 to k-1 do d[i]:=i;
  for i:=2 to k do
    if x > inf then x:=0
               else x:=x and d[i];
  if x <> y then writeln(-1)
            else begin
                   write(d[1]);
                   for i:=2 to k do
                    write(' ',d[i]);
                 end;
 close(input);
 close(output);
end.
