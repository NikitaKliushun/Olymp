//Karpuk Ilya Mihajlovich, Starye Dorogi, form 11, Z1
var input, output: text;
var flatX: array [1..100] of integer;
var flatY: array [1..100] of integer;
var flat: array [0..11, 0..11] of string;
var buff: string;
var i, j, n, l: integer;
var gameover: boolean;

procedure slice;
var k: integer;
begin
    for k := 1 to 10 do
    begin
        flat[i][k] := buff[k];
    end;
end;

procedure toInt;
var k: integer;
begin
    case buff of
        'a': flatX[i] := 1;
        'b': flatX[i] := 2;
        'c': flatX[i] := 3;
        'd': flatX[i] := 4;
        'e': flatX[i] := 5;
        'f': flatX[i] := 6;
        'g': flatX[i] := 7;
        'h': flatX[i] := 8;
        'i': flatX[i] := 9;
        'k': flatX[i] := 10;
    end;
end;

begin
    gameover := false;
    assign( input, 'input.txt' );

    reset( input );


    for i := 1 to 10 do
    begin
        readln( input, buff );
        slice;
    end;

    readln( input, n );

    for i := 1 to n do
    begin
        read( input, flatY[i] );
        readln( input, buff );
        if Length(buff) = 2 then
            buff := buff[2];
        toInt;
    end;

    close(input);

    assign( output, 'output.txt');
    rewrite( output );

    for i := 1 to n do
    begin
        if flat[flatY[i]][flatX[i]] = '.' then
        begin
            writeln( output, 'MISS' );
            continue;
        end;

        if flat[flatY[i]][flatX[i]] = '#' then
        begin

             flat[flatY[i]][flatX[i]] := '.';
            if (flat[flatY[i]-1][flatX[i]] = '#') or
               (flat[flatY[i]+1][flatX[i]] = '#') or
               (flat[flatY[i]][flatX[i]-1] = '#') or
               (flat[flatY[i]][flatX[i]+1] = '#') then
            begin

                writeln( output, 'HIT' );
                continue;
            end
            else
            begin
                gameover := true;
                for j := 1 to 10 do
                   for l := 1 to 10 do
                        if flat[j][l] = '#' then
                            gameover := false;

                if gameover = true then
                begin
                    writeln( output, 'GAME OVER' );
                    break;
                end
                else
                begin
                    writeln( output, 'DEAD' );
                end;

            end;

        end;
    end;

    close( output );
end.
