
{ Задача  : "Апельсины"                        }
{ Тема    :  Арифметика (нахождение НОД, НОК)  }
{ Решение :  Чернушевич Игорь                  }

var
    N,K,M : Int64;

function Nod(a,b : Int64) :Int64;
begin
    while (a <> 0) and (b <> 0) do
        if a > b then a:=a mod b
                 else b:=b mod a;
    Nod:=a + b;
end;

begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Read(N,M);
    K:=(N*M) div Nod(N,M);
    Write(K div M);
    Close(Input);
    Close(Output);
end.
