{Колячко Мария}
{г. Березино}
{Тур 1}
{Задача 4}
uses math;
const
  inf = 1000000000;
var
  N,k,p,f:int64;
  i,j,q:longint;
  a,d:array[0..1111,0..1111]of int64;
  c,h,g:array[0..2111]of int64;
  Ans:int64;


begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 Read(N,k);     Ans:=inf;
 for i:=1 to N do
  for j:=1 to k do
   begin
     Read(a[i,j]);
     Inc(d[i,a[i,j]]);
     if d[i,a[i,j]]= 1 then Inc(c[a[i,j]]);
   end;
 close(input);
 f:=0;
 for i:=1 to k do
  if c[i] = N then f:=1;
 if f = 0 then begin
                writeln(-1);
                halt;
                close(output);
               end;
 for i:=1 to k do
  begin
   p:=0;f:=0;
   for j:=1 to N do
     if p = 0 then p:=a[j,i]
              else if p <> a[j,i] then begin
                                        f:=-1;
                                        break;
                                       end;
   if f = 0 then begin
                   writeln(0);
                   close(output);
                   halt;
                 end;
  end;
 for q:=1 to k do
  begin
   fillchar(g,sizeof(g),0);
   fillchar(h,sizeof(h),0);
   for i:=1 to N do
    for j:=1 to k do
       if a[i,j] = q then begin
                            if h[i] = 0 then h[i]:=j;
                            g[j]:=1;
                          end;
   for i:=1 to k do
    for j:=1 to n do
     if h[j] <> i then
      if g[i]  = 1 then
     begin
      Ans:=min(Ans,abs(h[j]-i));
      Ans:=min(Ans,abs(h[j] - (i+k)));
     end;
  end;
 writeln(Ans);
 close(output);
end.

