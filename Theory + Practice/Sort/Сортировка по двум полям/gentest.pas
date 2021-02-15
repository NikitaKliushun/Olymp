Uses
    SysUtils;

const
    NameOut = 'test.in' ;

var
    FileOut   : text ;
    N, i, max : longint ;

begin
    N := StrToInt(ParamStr(1)) ;
    max := StrToInt(ParamStr(2)) ;
    Assign(FileOut, NameOut);
    Rewrite(FileOut);
    Writeln(FileOut, N);
    for i := 1 to N do
        Writeln(FileOut, Random(max), ' ', Random(max));
    Close(FileOut);
end.