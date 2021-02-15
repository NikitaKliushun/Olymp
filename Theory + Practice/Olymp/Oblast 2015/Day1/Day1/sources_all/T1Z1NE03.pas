{Колячко Мария Николаевна}
{Березино, 8 класс}
{Задача 1}
uses math;

var
  n,k,kk,i,maxx,m,j:longint;
  a,b,c:array[0..111111] of integer;


begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
  read(n,k);
  if k = 0 then write(0) else begin
  maxx:=0;
  m:=0;
  fillchar(b,sizeof(b),0);
  for i:=1 to n do
    begin
     read(a[i]);
     inc(b[a[i]]);
     maxx:=max(maxx,a[i]);
    end;
  for i:=1 to maxx do
   if b[i] >= k then
                  begin
                    kk:=i;
                    c[i]:=b[i] div k;
                    inc(m,c[i]);
                  end;
 writeln(m);
  for i:=1 to maxx do
   begin
      if kk = i then begin
                 if c[i] > 0 then
                           begin
                             for j:=1 to c[i]-1 do
                                write(i,' ');
                                    write(i);
                           end; end
                  else
                   if c[i] > 0 then
                                  begin
                                    for j:=1 to c[i] do
                                      write(i,' ');
                                  end;
   end; end;
 close(input);
 close(output);
end.
