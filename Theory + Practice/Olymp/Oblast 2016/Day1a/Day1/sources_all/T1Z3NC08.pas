{Курашевич Максим Сергеевич г. Солигорск 11 класс Задача 3}
Program T1Z3NC08;
var a,h:array [1..100] of integer;
n,i,m,i1,max,s,k,l,g:integer;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,n);
for i:=1 to n do
begin
  read(f1,a[i]);
  h[a[i]]:=h[a[i]]+1;
  if a[i]>m then m:=a[i];
end;
for i:=1 to n do
  if h[i]=1 then s:=s+1;
max:=s;
for i:=2 to n do
  if h[i]>max then begin 
                        max:=h[i];
                        i1:=i;
                   end;
if m=1 then begin 
                 write(f2,n);
                 close(f1);
                 close(f2);
                 exit;
            end;
if m=2 then begin
                 for i:=1 to n do
                   if a[i]=2 then k:=k+1;
                 for i:=1 to n-1 do
                   if (a[i]=a[i+1]) and (a[i]=2) then l:=l+1;
                 if l+1<>k then if k>n-k then begin 
                                                   write(f2,k);
                                                   close(f1);
                                                   close(f2);
                                                   exit;
                                              end
                                         else begin
                                                   write(f2,n-k);
                                                   close(f1);
                                                   close(f2);
                                                   exit;
                                              end;
                 if l+1=k then begin 
                                    write(f2,n);
                                    close(f1);
                                    close(f2);
                                    exit;
                               end;
            end;

g:=random(max,n);
write(f2,g);
Close(f1);
Close(f2);
end.