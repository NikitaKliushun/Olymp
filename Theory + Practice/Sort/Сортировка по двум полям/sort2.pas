
const
    NameIn  = 'test.in' ;
    NameOut = 'test.out' ;

type
    DataPair = record
        first  : longint ;
        second : longint ;
    end;

var
    FileIn, FileOut : text ;
    data            : array [1..10000] of DataPair ; 
    N               : longint ;

procedure DataIn;
var
    i : longint ;
begin
    Assign(FileIn, NameIn);
    Reset(FileIn);
    Readln(FileIn, N);
    for i := 1 to N do
        Readln(FileIn, data[i].first, data[i].second);
    Close(FileIn);
end;

procedure DataOut;
var
    i : longint ;
begin
    Assign(FileOut, NameOut);
    Rewrite(FileOut);
    Writeln(FileOut, N);
    for i := 1 to N do
        Writeln(FileOut, data[i].first, ' ', data[i].second);
    Close(FileOut);
end;

function Less(a, b : DataPair) : boolean;
begin
    Less := (a.first < b.first) or ((a.first = b.first) and (a.second < b.second)) ;
end;

procedure QuickSort(Left, Right : longint);
var
    i, j : longint ;
    m, t : DataPair ;
begin
    i := Left ;
    j := Right ;
    m := data[(i + j) div 2] ;
    while i <= j do
    begin
        while Less(data[i], m) do
            i := i + 1 ;
        while Less(m, data[j]) do
            j := j - 1 ;
        if i <= j then
        begin
            t := data[i] ;
            data[i] := data[j] ;
            data[j] := t ;
            i := i + 1 ;
            j := j - 1 ;
        end;
    end;
    if Left < j then
        QuickSort(Left, j);
    if i < Right then
        QuickSort(i, Right);
end;

begin
    DataIn;
    QuickSort(1, N);
    DataOut;
end.