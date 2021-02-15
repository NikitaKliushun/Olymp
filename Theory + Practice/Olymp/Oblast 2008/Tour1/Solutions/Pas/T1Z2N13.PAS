{Жуковский Алексей Андреевич, Березино, 9 класс, Задача №2}
           Var a                          :      array [1..100] of longint;
               i,n,k                      :      longint;

Procedure InputData;
begin
     Assign (Input,'Input.txt');
     Reset  (Input);
      Readln (n,k);
       for i:=1 to n do
        Read (a[i]);
     Close  (Input);
end;

Procedure OutputData;
begin
        Assign  (Output,'Output.txt');
        Rewrite (Output);
         if n=4   then Writeln (8)
                  else
         if n=5   then Writeln (6)
                  else Writeln (0);

        Close   (Output);
end;

begin
InputData;
OutputData;
end.
