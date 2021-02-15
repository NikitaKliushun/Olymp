{Жуковский Алексей Андреевич, Березино, 9 класс, задача №2}
        Var n,k                         :       Int64;

Procedure InputData;
begin
        Assign (Input,'Input.txt');
        Reset  (Input);
         Readln (n,k);
        Close  (Input);
end;

Procedure OutputData;
begin
        Assign  (Output,'Output.txt');
        Rewrite (Output);
         Writeln (n*k + 3);
        Close   (Output);
end;

begin
InputData;
OutputData;
end.