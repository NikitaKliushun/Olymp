{Козелько Никита Сергеевич, город Солигорск, 9 класс, задача 1}
var a:array[1..100000] of longint;
    ss, mm, hh, j, i, n, t, x:longint;
    s, s1:string;
begin
assign(input, 'input.txt');reset(input);
assign(output, 'output.txt');rewrite(output);
readln(n, t);
for i:=28800 to 75599 do
 a[i]:=0;
for i:=1 to n*2 do
 begin
 readln(s);
 s1:=s[1]+s[2]; val(s1, hh);
 s1:=s[4]+s[5]; val(s1, mm);
 s1:=s[7]+s[8]; val(s1, ss);
 j:=hh*3600+mm*60+ss;
 inc(a[j]);
 end;
for i:=28800 to 75599 do
 begin
 if a[i]<>0 then begin
                 j:=a[i];
                 for n:=1 to j do
                  begin
                  x:=i;
                  hh:=x div 3600; mm:=(x mod 3600) div 60; ss:=(x mod 3600)-mm*60;
                  if hh>10 then write(hh, ':')
                           else write('0', hh, ':');
                  if mm>10 then write(mm, ':')
                           else write('0', mm, ':');
                  if ss>10 then write(ss, '-')
                           else write('0', ss, '-');
                  x:=i+t;
                  hh:=x div 3600; mm:=(x mod 3600) div 60; ss:=(x mod 3600)-mm*60;
                  if hh>10 then write(hh, ':')
                           else write('0', hh, ':');
                  if mm>10 then write(mm, ':')
                           else write('0', mm, ':');
                  if ss>10 then writeln(ss)
                           else writeln('0', ss);
                  dec(a[i]); dec(a[i+t]);
                  end;
                 end;
 end;
close(input);close(output);
end.
