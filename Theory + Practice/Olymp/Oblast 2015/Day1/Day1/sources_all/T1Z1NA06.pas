//Куличок Никита, 10 класс, Березино
//Березинкая гимназия
//Тур 1, Задача 1 "День именинника"
var
     a,b:array [1..111] of Longint;
     Ans,i,j,N,K,mx,X:Longint;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(N,K);
     mx:=0;
     for i:=1 to N do
begin
     Read(X);
     if X>mx then mx:=X;
     Inc(a[X]);
 end;
     for i:=1 to mx do
begin
     if a[i]>0 then
     begin
       b[i]:=a[i] div K;
       Inc(Ans,b[i]);
     end;
 end;
     Writeln(Ans);
     for i:=1 to mx do
     if b[i]>0 then begin
                         for j:=1 to b[i] do
                         Write(i,' ');
                     end;
     Close(Input);
     Close(Output);
 end.