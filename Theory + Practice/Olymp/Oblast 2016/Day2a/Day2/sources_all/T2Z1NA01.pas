{Куличок Никита Сергеевич
 ГУО"Березинская гимназия"
 11 класс
 Тур 2 Задача 1}
var
     d,a:array [0..100100] of Int64;
     i:Longint;
     N,M,W,S,B,T,answer:Int64;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(M,W);
     d[0]:=0;
     answer:=0;
     for i:=1 to M do
begin
     Read(a[i]);
     d[i]:=d[i-1]+a[i];
 end;
     Readln(S,B,T);
     for i:=1 to M do
begin
     N:=(d[i-1]-1) mod W;
     N:=(s+N) mod W;
     if a[i]>=t then begin
                          N:=(N+T) mod W;
                          if N=0 then N:=W;
                          if N=B then Inc(answer);
                      end;
 end;
     Writeln(answer);
     Close(Input);
     Close(Output);
 end.

