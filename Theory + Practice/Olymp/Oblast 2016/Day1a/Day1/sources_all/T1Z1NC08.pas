{Курашевич Максим Сергеевич г. Солигорск 11 класс Задача 1}
Program T1Z1NC08;
var a:array [1..12,1..12] of integer;
i,j,s1,m,n,s2:integer;
s3,s4:char;
s:string;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
rewrite(f2);
for i:=1 to 12 do
  for j:=1 to 12 do
    a[i,j]:=1;
for i:=1 to 10 do
begin
  readln(f1,s);
  for j:=1 to length(s) do
    if s[j]='.' then a[i+1,j+1]:=1
                else a[i+1,j+1]:=2;
end;
for i:=1 to 12 do
  for j:=1 to 12 do 
  if a[i,j]=2 then m:=m+1;
read(f1,n);
for i:=1 to n do
begin
  readln(f1,s1,s4,s3);
  if ord(s3)<>107 then s2:=ord(s3)-96
             else s2:=ord(s3)-97;
  if a[s1+1,s2+1]=1 then writeln(f2,'MISS');
  if ((a[s1+1,s2+1]=2) and (a[s1,s2+1]=1) and (a[s1+1,s2]=1) and (a[s1+1,s2+2]=1) and (a[s1+2,s2+1]=1)) then if m>1 then begin
                                                                                                                           writeln(f2,'DEAD');
                                                                                                                           m:=m-1;
                                                                                                                      end
                                                                                                                     else begin
                                                                                                                               writeln(f2,'GAME OVER');
                                                                                                                               Close(f1);
                                                                                                                               Close(f2);
                                                                                                                               exit;
                                                                                                                          end;
           
  if (a[s1+1,s2+1]=2) and ((a[s1,s2+1]=2) or (a[s1+1,s2]=2) or (a[s1+1,s2+2]=2) or (a[s1+2,s2+1]=2)) then begin
                                                                                                               writeln(f2,'HIT');
                                                                                                               m:=m-1;
                                                                                                               a[s1+1,s2+1]:=1;
                                                                                                          end                                                                                                                     
end;
end.