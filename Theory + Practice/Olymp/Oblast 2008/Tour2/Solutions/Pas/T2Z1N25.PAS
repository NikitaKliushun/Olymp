{Халецкая Ольга владимировна 11 класс
Минская обл.,г. Березино,Задача 1}
Program task;
var
n,i,j,k     :  LonGint;
a         :  array [1..10000] of Int64;   sum1,sum2,t,Vigr  :  Int64;
 Procedure Input1;
  begin
   Assign(Input,'Input.txt');
  Reset(Input);
   Readln(n);
    for i:=1 to n do
   Read(a[i]);
   Close(Input);
  end;

{  Procedure Prov;
   begin
    for i:=1 to n do
     if b[i]<>1 then sum1:=sum1+a[i]
                else sum2:=aum2+a[i];
   end;

  Procedure Per(x   :   LOnGInt);
   begin
    if x<1 then Exit;
     begin
      if Sum1>Sum2 then begin
                         b[x]:=0;
                         Per(x-1);
                         b[x]:=1;
                          Prov;

                        end;
     end;
   end; }

 Procedure Sort;
  begin
   for i:=1 to n-1 do
    begin
     for j:=1 to n-1 do
      if a[j]>a[j+1] then begin
                           k:=a[j];
                           a[j]:=a[j+1];
                           a[j+1]:=k;
                          end;
    end;
  end;

 Procedure Prig;
  begin
   t:=n div 2;
    for i:=1 to t do
    Sum1:=sum1+a[i];
     for j:=t+1 to n do
     Sum2:=Sum2+a[j];
  end;

 Procedure Output1;
  begin
   Assign(Output,'Output.txt');
   Rewrite(Output);
   Writeln(Vigr);
   Close(Output);
  end;


 begin
  Input1;
  Sort;
  Prig;
{  min:=9999;
  Per(n);   }
  Vigr:=Sum2-sum1;
  Output1;
 end.
