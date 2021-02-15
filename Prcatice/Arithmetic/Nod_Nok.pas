Var
 N,M,Nod,Nok : Longint;

{Procedure GCD (a,b : Longint);
Begin
 While (a<>0) and (b<>0) do
  If a > B then a:=a mod b
           else b:=b mod a;
 Nod:=a+b;
End;}

// Рекурсивный алгоритм с применением метода Эвклида
Procedure GCD (a,b : Longint);
var
 ost : Longint;

begin
 ost:=a mod b;
 if ost = 0 then Nod:=b
            else gcd(b,ost);
end;

Begin
 Read(N,M);
 GCD(N,M);
 Nok:=(n*m) div Nod;
 Write(Nod,' ',Nok);
End.