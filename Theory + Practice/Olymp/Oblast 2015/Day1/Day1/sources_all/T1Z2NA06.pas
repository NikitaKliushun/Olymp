//Куличок Никита, 10 класс, Березино
//Березинская гимназия
//Тур 1 Задача 2 "Конфеты"
uses math;
var
     N,A,B,X,Ans,Z,Z1,Z2:int64;
     R,C:Longint;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(A,B);
     N:=A+B;
     X:=Trunc(Sqrt(N));
     for r:=1 to X do
     for c:=r to N do
begin
     Z:=r*c;
     if Z>N then Break;
     if z and 1=1 then begin z1:=z shr 1; z2:=(z shr 1)+1; end
                  else begin z1:=z shr 1; z2:=z shr 1; end;
     if ((z1<=A) and (z2<=B)) or ((z1<=B) and (z2<=A)) then Inc(Ans);
 end;
     Writeln(ans);
     Close(Input);
     Close(Output);
 end.
