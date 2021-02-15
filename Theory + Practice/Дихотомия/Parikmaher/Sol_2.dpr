program solution;
{$APPTYPE CONSOLE}
const
   start_time = 9;
   end_time = 19;
   maxn = 55;
   maxt = (end_time - start_time)*60 + 2;
   e = 1e-12;
var
   n: longint;
   i: longint;
   enter: array [0..maxn] of longint;
   finish: longint;
   l, r, x: extended;

function get_num: longint;
var
   ch: char;
   ret: longint;
begin
   repeat
      read(ch);
   until ch in ['0'..'9'];
   ret:=ord(ch) - ord('0');
   read(ch);
   get_num:=ret*10 + ord(ch) - ord('0');
end;

function get_time: longint;
begin
   get_time:=(get_num - start_time)*60 + get_num;
end;

function possible(d: extended): boolean;
var
   i: longint;
   l, r: extended;
begin
   l:=enter[1];
   r:=enter[1];
   for i:=1 to n do begin
      if l < enter[i] then
         l:=enter[i];
      if r < enter[i] then
         r:=enter[i];
      l:=l + 5;
      r:=r + d;
   end;
   possible:=(l <= finish) and (finish <= r);
end;

begin
   assign(input, 'haircut.in');
   reset(input);
   assign(output, 'haircut.out');
   rewrite(output);
   readln(n);
   for i:=1 to n do
      enter[i]:=get_time;
   finish:=get_time;

   l:=5;
   r:=maxt;
   while abs(r - l) > e do begin
      x:=(l + r)/2;
      if possible(x) then
         r:=x
      else
         l:=x;
   end;
   if r = maxt then
      writeln(-1)
   else
      writeln(r: 0: 10);
end.
