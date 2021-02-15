{Куличок Никита Сергеевич
 ГУО"Березинская гимназия"
 11 класс
 Тур 1 Задача 2}
const
     d:Int64=1;
var
     N,M,i,kol,X,Y,K,inf:Int64;
     j:Longint;
     ans:array [0..100100] of Int64;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(K,N);
     inf:=d shl 30;
     M:=N;
     i:=0;
     X:=0;
     while M>0 do
begin
     Y:=M and d;
     if Y=0 then X:=X+(d shl i);
     M:=M shr d;
     Inc(i);
 end;
     while i<30 do
begin
     X:=X+(d shl i);
     Inc(i);
 end;
     kol:=1;
     ans[kol]:=N;
     M:=X;
     while X>0 do
begin
     if X<inf then
     if N+X<inf then begin
                          Inc(kol);
                          ans[kol]:=N+X;
                      end;
     X:=M and (X-1);
     if kol>K then Break;
 end;
     if kol<K then Writeln('-1')
              else begin
                        for j:=1 to K-1 do
                        Write(ans[j],' ');
                        Writeln(ans[K]);
                    end;
     Close(Input);
     Close(Output);
 end.

