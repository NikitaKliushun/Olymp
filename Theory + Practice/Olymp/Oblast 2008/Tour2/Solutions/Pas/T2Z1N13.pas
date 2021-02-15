{Жуковский Алексей Андреевич, Березино, 9 класс, задача №1}
           Var a                          :      array [1..101] of Int64;
               Sk,Si                      :      array [1..51] of Int64;
               n,k,i,n2,j                 :      longint;
               sum			  :	 Int64;

Procedure InputData;
begin
     Assign (Input,'Input.txt');
     Reset  (Input);
      Readln (n);
       for i:=1 to n do
        Read (a[i]);
     Close  (Input);
end;

Procedure Sort;
begin
for i:=1 to n - 1 do
 for j:=1 to n - i do
  if a[j] > a[j+1] then begin
                         k:=a[j];
                         a[j]:=a[j+1];
                         a[j+1]:=k;
                        end;
end;

Procedure Sol;
begin
Sort;
 n2:=n div 2;
  for i:=1 to n2 do Sk[i]:=a[i];
   for i:=n2+1 to n do Si[i-n2]:=a[i];
for i:=1 to n-n2 do
 Si[i]:=Si[i] - Sk[i];
for i:=1 to n-n2 do
 Sum:=Sum+Si[i];
end;

Procedure OutputData;
begin
     Assign  (Output,'Output.txt');
     Rewrite (Output);
      Writeln (Sum);
     Close   (Output);
end;

begin
InputData;
Sol;
OutputData;
end.