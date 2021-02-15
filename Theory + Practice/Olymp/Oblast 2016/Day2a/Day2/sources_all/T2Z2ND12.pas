var compStays: array[1..3001] of integer;
var winnersCount, blocksCount: integer;
var winners: array[1..3001] of integer;
var input, output: text;
var i, j, lastBlockSize, lastWinnerSize, lastBlock: integer;
var positions: array [1..3000] of integer;
var posCount: integer;
var res: boolean;
begin

    lastBlockSize := 0;
    lastBlock := 1;
    lastWinnerSize := 0;
    posCount := 0;
    res := false;

    assign( input, 'input.txt' );
    reset( input );

    read( input, winnersCount, blocksCount );
    for i := 1 to winnersCount do
        read( input, winners[i] );

    for i := 1 to blocksCount do
        read( input, compStays[i] );

    close( input );

    if ( 2 <= blocksCount ) and ( compStays[1] > compStays[2] )
        and ( blocksCount > winnersCount ) then
    begin
        lastBlockSize := compStays[2];
        lastBlock := 2;
    end
    else
        lastBlockSize := compStays[1];

    for i := 1 to winnersCount do
        for j := lastBlock to blocksCount do
            if lastBlockSize + lastWinnerSize < compStays[j] + winners [i] then
            begin
                Inc(posCount);
                positions[posCount] := j;
                lastBlockSize := compStays[j];
                lastWinnerSize := winners[i];
                lastBlock := j+1;
                break;
            end;

    if posCount <> winnersCount then
        res := true;
    assign( output, 'output.txt' );
    rewrite( output );

    if ( res = true ) then
        write( output, -1 )
    else
        for i := 1 to posCount do
            write( output, positions[i], ' ' );

    close( output );


end.