{Халецкая Ольга Владимировна 11 класс
Минская обл.,г.Березино.
Задача 2}

Program task;
var
n,k,kol,i,j,sum1,sum2   :  LonGint;
a,b       :  array [1..10000] of LOnGInt;
Procedure Input1;
 begin
  Assign(Input,'input.txt');
  Reset(Input);
  Readln(n,k);
   for i:=1 to  n do
   REad(a[i]);
   Close(Input);
 end;

Procedure Prov;
 begin
  for j:=1 to n do
  if b[j]<>1 then Sum1:=sum1+a[j]
             else Sum2:=Sum2+a[j];
 end;

 Procedure Per(x   :  LOnGInt);
  begin
   if x<1 then Exit;
    begin
     if (sum1<=k)or(sum2<=k) then begin
               b[x]:=0;
               Per(x-1);
               b[x]:=1;
               Per(x-1);
               Prov;
                if (sum1>=k) and (sum2>=k) then kol:=kol+1;
                if (Sum1=Sum2)and (sum1>=k) and (sum2>=k) then kol:=kol+1;
               sum1:=0;
               sum2:=0;
              end;
              end;

  end;


 Procedure Output1;
  begin
   Assign(Output,'output.txt');
   Rewrite(Output);
   if kol=0 then Writeln(kol)
            else Writeln(kol+1);
   Close(Output);
  end;

 begin
  Input1;
  Per(n);
  Output1;
 end.
