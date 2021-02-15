{Колячко Мария}
{г. Березино}
{Тур 1}
{Задача 3}
var
 a:array[0..111111]of int64;
 h,c,d,met:array[0..1111]of int64;
 k,n,q,kol,Ans,p:int64;
 i,j:longint;

begin
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 Read(N);
 for i:=1 to N do
  begin
    Read(a[i]);
    Inc(c[a[i]]);
  end;
 for i:=1 to N do
  begin
    fillchar(met,sizeof(met),0);kol:=0;p:=0;
    if h[a[i]] = 0 then
      if c[a[i]] > 1 then
         begin
            for j:=i+1 to N do
              if a[j] <> a[i] then
               begin
                 if met[a[j]] = 0 then begin
                                         kol:=kol+c[a[j]];
                                         met[a[j]]:=1;
                                       end;
               end else
               p:=p+kol;
         end;
    kol:=p;
    if kol > 0 then
     if c[a[i]] < kol then for j:=i+1 to N do
                             if a[j] <> a[i] then h[a[j]]:=0
                                             else h[a[j]]:=1
                      else for j:=i+1 to N do
                             if a[j] <> a[i] then h[a[j]]:=1;
  end;
 Ans:=0;
 for i:=1 to N do
  if h[a[i]] = 0 then Inc(Ans);
 writeln(Ans);
 close(input);
 close(output);
end.
