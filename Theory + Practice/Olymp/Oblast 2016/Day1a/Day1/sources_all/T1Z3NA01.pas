{Куличок Никита Сергеевич
 ГУО"Березинская гимназия"
 11 класс
 Тур 1 Задача 3}
uses math;
const
     inf=1000000;
var
     a,dp,mx,kol:array [0..100100] of Longint;
     mn,ps,met:array [0..111] of Longint;
     N,i:Longint;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(N);
     FillChar(met,SizeOf(met),0);
     for i:=1 to N do
begin
     Read(a[i]);
     if met[a[i]]=0 then mn[a[i]]:=i;
     Inc(met[a[i]]);
     kol[i]:=met[a[i]];
     ps[a[i]]:=i;
 end;
     mx[0]:=0;
     for i:=1 to N do
begin
     dp[i]:=mx[mn[a[i]]-1]+kol[i];
     mx[i]:=mx[i-1];
     if ps[a[i]]=i then mx[i]:=max(mx[i-1],dp[i]);
 end;
     Writeln(mx[N]);
     Close(Input);
     Close(Output);
 end.
