
const
    NameIn : string = 'input.txt' ;
    NameOut : string = 'output.txt' ;
    Sys2 : array [1..18] of Extended = (2, 22, 222, 2222, 22222, 222222, 2222222, 22222222, 222222222, 
            2222222222, 22222222222, 222222222222, 2222222222222, 22222222222222,
            222222222222222, 2222222222222222, 22222222222222222, 222222222222222222);

var
    X, Answer : Extended ;

procedure DataIn;
var
    FileIn : text ;
begin
    Assign(FileIn, NameIn);
    Reset(FileIn);
    Readln(FileIn, X);
    Close(FileIn);
end;

procedure DataOut;
var
    FileOut : text ;
begin
    Assign(FileOut, NameOut);
    Rewrite(FileOut);
    Writeln(FileOut, Answer:0:0);
    Close(FileOut);
end;

procedure Backtrack(value : extended; ind : longint);
var
    i : longint ;
begin
    if value >= X then
        begin
            if (Answer < 0) or (value < Answer) then
                Answer := value ;
            Exit;
        end;
    for i := ind to 18 do
        begin
            Backtrack(value*Sys2[i], i);
            Backtrack(value*Sys2[i], i + 1);
        end;
end;

procedure SolveProblem;
begin
    Answer := -1.0 ;
    Backtrack(1, 1);
end;

begin
    DataIn;
    SolveProblem;
    DataOut;
end.