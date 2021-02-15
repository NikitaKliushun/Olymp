{Жуковский Алексей Андреевич, Березино, 9 класс, зачада №3}
           Type
               Zapis                      =      Record
                                                  x   : integer;
                                                  y   : integer;
                                                 end;
           Var a                          :      array [1..5000] of zapis;
               i,m,n,otv                  :      longint;
               b                          :      array [1..5000] of longint;

Procedure OutputData;
begin
     Assign  (Output,'Output.txt');
     Rewrite (Output);
      Writeln (Otv);
     Close   (Output);
      Halt;
end;

Procedure InputData;
begin
     Assign (Input,'Input.txt');
     Reset  (Input);
      Readln (n,m);
       for i:=1 to m do
        Readln (a[i].x,a[i].y);
      if m = 1 then begin
                     Otv:=0;
                     OutputData;
                    end;
     Close  (Input);
end;

Procedure Sol;
begin
for i:=1 to m do
 b[i]:=Abs (a[i].x - a[i].y);
for i:=1 to m do
 Dec(b[i]);
for i:=1 to m do
 Otv:=Otv + b[i];
  Otv:=Otv+2;
end;

begin
InputData;
Sol;
OutputData;
end.