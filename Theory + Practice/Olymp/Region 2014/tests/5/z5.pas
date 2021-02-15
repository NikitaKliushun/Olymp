Program z5;
const conv:array[0..9,0..9] of byte=((0,4,3,3,4,3,2,3,1,2),
                                     (4,0,5,3,2,5,6,1,5,4),
                                     (3,5,0,2,5,2,3,4,2,3),
                                     (3,3,2,0,3,2,3,2,2,1),
                                     (4,2,5,3,0,3,4,3,3,2),
                                     (3,5,2,2,3,0,1,4,2,1),
                                     (2,6,3,3,4,1,0,5,1,2),
                                     (3,1,4,2,3,4,5,0,4,3),
                                     (1,5,2,2,3,2,1,4,0,1),
                                     (2,4,3,1,2,1,2,3,1,0));
var
  a, b, a1, b1 : array [1..20] of byte;
  x, y : int64;
  n ,n1, i, j, i1, j1, min, curr : longint;
  t:byte;
  f1,f2 : text;
function F:longint;
{подсчёт цены последовательного преобразования цифр числа a1 в цифры числа b1}
  var 
    sum,i:longint;
  begin
    sum:=0;
    for i:=1 to n1 do
      sum:=sum+conv[a1[i],b1[i]];
    F:=sum;  
  end;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);
  
  read(f1,x,y);
  {преобразуем числа в массивы}
  i:=0;
  while x>0 do
    begin
      i:=i+1;
      a[i]:=x mod 10;
      x:=x div 10;
    end;
  n:=i;
  i:=0;  
  while y>0 do
    begin
      i:=i+1;
      b[i]:=y mod 10;
      y:=y div 10;
    end;
    
  {сортируем массивы по возрастанию}
  for i:=1 to n-1 do
    for j:=1 to n-i do
      if a[j]>a[j+1]
         then begin
                t:=a[j];
                a[j]:=a[j+1];
                a[j+1]:=t;
              end;
  for i:=1 to n-1 do
    for j:=1 to n-i do
      if b[j]>b[j+1]
         then begin
                t:=b[j];
                b[j]:=b[j+1];
                b[j+1]:=t;
          end;
  i1:=0; j1:=0;
  {убираем одинаковые подмножества цифр}
  i:=1;
  j:=1;
  while (i<=n) and (j<=n) do
    if a[i]=b[j]
       then begin
              i:=i+1;
              j:=j+1;
            end
       else if a[i]<b[j]
               then begin
                      i1:=i1+1;
                      a1[i1]:=a[i];
                      i:=i+1;
                    end
               else begin
                      j1:=j1+1;
                      b1[j1]:=b[j];
                      j:=j+1;
                    end;
  while i<=n do
    begin
      i1:=i1+1;
      a1[i1]:=a[i];
      i:=i+1;
    end;
  while j<=n do
    begin
      j1:=j1+1;
      b1[j1]:=b[j];
      j:=j+1;
    end;  
  n1:=i1;  
{  for i:=1 to n1 do
    write(a1[i]);
  writeln;  
  for i:=1 to n1 do  
    write(b1[i]);
  writeln;}  
  {генерируем перестановки в лексикографическом порядке оставшихся цифр первого числа}
 
  if n1>0 
     then begin
            min:=70;
            repeat
              curr:=F;
              {for i:=1 to n1 do
                write(a1[i]);
              writeln; 
              writeln(curr);}
              if curr<min
                 then min:=curr;
              i:=n1-1;
              while (i>0) and (a1[i]>=a1[i+1]) do
                i:=i-1;
              if i>0
                 then begin
                        j:=n1;
                        while a1[j]<=a1[i] do
                          j:=j-1;
                        t:=a1[i];
                        a1[i]:=a1[j];
                        a1[j]:=t;
                        i:=i+1;
                        j:=n1;
                        while i<j do
                          begin
                            t:=a1[i];
                            a1[i]:=a1[j];
                            a1[j]:=t;
                            i:=i+1;
                            j:=j-1;
                          end;
                      end;
            until i=0;
          end
     else min:=0;
  
  write(f2,min);
  
  close(f1);
  close(f2);
end.