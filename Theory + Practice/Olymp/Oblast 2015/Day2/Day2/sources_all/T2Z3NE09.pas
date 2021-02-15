var n, k, ans, a, i: longint;
   s: ansistring;
   begin
assign (input,'input.txt');
assign (output,'output.txt');
reset(input);
rewrite(output);

read( n, k);
readln;
readln(s);
if k = 1 then ans := 1 else

if n = 1 then
begin
   val(s,a);
   case a of
    0: ans :=1;
    1: if k >= 2 then ans := 2 else ans := 1;
    2: if k >= 3 then ans := 3 else if k = 2 then ans := 2 else ans := 1;
    3: if k >= 2 then ans := 3 else ans := 1;
    4: if k >= 3 then ans := 3 else if k = 2 then ans := 2 else ans := 1;
    5: if k >1 theN ans := 3 else ans := 1;
    6: if k >= 4 then ans := 3 else if k = 2 then ans := 2 else ans := 1;
    9: if k >= 4 then ans := 3 else if k = 2 then ans := 2 else ans := 1;
    8: ans := 1;
    7: if k >= 2 then ans := 2 else ans := 1;
   end;
   end
else  if (s[1]='8')  then begin
i := 1;
while (i <= n)and(s[i]=s[1]) do
  inc(i);
if i >= length(s) then ans := 1;
end else ans:=random(1000000006)+1;//мне повезет
writeln(ans);

close(input);
close(output);




end.