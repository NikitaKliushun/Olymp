
{ Задача  :  "Сладкие забавы"        }
{ Тема    :   Перебор с возвратом    }
{ Решение :   Чернушевич Игорь       }

program Task2;
var
    a                :        array [1..50] of Int64;
    m                :        array [0..500000] of Int64;
    K,Sum,S,Kol      :        Int64;
    i,j,N            :        LongInt;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N,K);
    for i:=1 to N do
      begin
          Read(a[i]);
         { if a[i] > K then a[i]:=K;}   { !!! }
          Sum:=Sum + a[i];
      end;
    Close(Input);
end;

procedure Sort;
var
    Q : Int64;
begin
    for i:=1 to N - 1 do
      for j:=1 to N - 1 do
        if a[j+1] > a[j] then begin
                                   Q:=a[j];
                                   a[j]:=a[j+1];
                                   a[j+1]:=Q;
                              end;
end;

procedure Per(x : LongInt);
var
   jj : LongInt;
begin
    if S >= K then
                  if Sum - S >= K then Inc(Kol)
                                  else Exit;
    for jj:=x to N do
      if m[jj] = 0 then
                       begin
 	                   m[jj]:=1;
                           S:=S + a[jj];
	                   Per(jj+1);
                           S:=S - a[jj];
                           m[jj]:=0;
		       end;
end;


procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(Kol);
    Close(Output);
end;

begin
    InputData;
    Sort;
    Per(1);
    OutputData;
end.
