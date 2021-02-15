//Karpuk Ilya Mihajlovich, Starye Dorogi, form 11, Z4
var n, k: integer;
var i, j, z, y: integer;
var input, output: text;
var contLength, minTime, subminTime: integer;
var circle: array [1..2000, 1..2000] of integer;
var containsNumbers: array [1..2000] of integer;

function isContains( a: integer ): boolean;
var s, d: integer;
var cont, subcont: boolean;
begin
    cont := false;
    subcont := false;
    for s := 2 to n do
    begin
        for d := 1 to k do
            if circle[s][d] = a then
                subcont := true;

        if subcont = true then
            cont := true
        else
        begin
            cont := false;
            break;
        end;
    end;
    isContains := cont;
end;


begin

contLength := 0;
minTime := 2000;

assign ( input, 'input.txt' );
reset( input );

read( input, n, k );

for i := 1 to n do
    for j := 1 to k do
        read( input, circle[i, j] );

close( input );

for i := 1 to k do
    if isContains(circle[1][i]) = true then
    begin
        Inc(contLength);
        containsNumbers[contLength] := circle[1][i];
    end;

for i := 1 to contLength do
    for y := 1 to k do
        if circle[1][y] = containsNumbers[i] then
            for z := 1 to k do
                if circle[2][z] = circle[1][y] then
                begin
                    if y < z then
                        subminTime := z - y
                    else
                        subminTime := y - z;

                    if subminTime > (k - z + 1) then
                       subminTime := k - z + 1;

                    if subminTime < minTime then
                        minTime := subminTime;

                end;

if minTime = 2000 then
    minTime := -1;

assign( output, 'output.txt' );
rewrite( output );
write( output, minTime );
close(output);
end.
