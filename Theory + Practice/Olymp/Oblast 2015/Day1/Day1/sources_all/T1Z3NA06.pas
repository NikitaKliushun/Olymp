//Куличок Никита, 10 класс
//Березинская гимназия
//Тур 1, Задача 3 Марсианский шифр
uses math;
var
     a,b:array [0..11111111] of Integer;
     N,M,L1,L2,Y,i,pos,L,s:Longint;
     x:array [0..111111] of Longint;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(N,M);
     L1:=0;
     for i:=1 to N do
     Read(x[i]);
     for i:=N downto 1 do
begin
     Y:=i and 1;
     while X[i]>0 do
begin
     Inc(L1);
     a[L1]:=Y;
     Dec(x[i]);
 end;
 end;
     L2:=0;
     for i:=1 to M do
     Read(x[i]);
     for i:=M downto 1 do
begin
     Y:=i and 1;
     while X[i]>0 do
begin
     Inc(L2);
     b[L2]:=Y;
     Dec(X[i]);
 end;
 end;
     L:=max(L1,L2);
     for i:=1 to L do
     a[i]:=a[i] xor b[i];
     pos:=L;
     while (pos>0) and (a[pos]=0) do
     Dec(pos);
     s:=1;
     Dec(pos);
     while pos>0 do
begin
     if a[pos]=a[pos+1] then Inc(s)
                        else begin Write(s,' '); s:=1; end;
     Dec(pos);
 end;
     if s>0 then Write(s);
     Close(Input);
     Close(Output);
 end.

