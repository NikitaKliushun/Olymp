
const
    NameIn = 'test.out' ;

var
    FileIn                   : text ;
    N, i, prevA, prevB, a, b : longint ;

begin
    Assign(FileIn, NameIn);
    Reset(FileIn);
    Readln(FileIn, N);
    Readln(FileIn, prevA, prevB);
    for i := 2 to N do
    begin
        Readln(FileIn, a, b);
        if (a < prevA) or ((a = prevA) and (b > prevB)) then
        begin
            Writeln('Wrong!');
            Writeln('Line: ', i + 1);
            Writeln(prevA, ' ', prevB);
            Writeln(a, ' ', b);
            Close(FileIn);
            Halt;
        end;
        prevA := a ;
        prevB := b ;
    end;
    Writeln('Ok!');
    Close(FileIn);
end.