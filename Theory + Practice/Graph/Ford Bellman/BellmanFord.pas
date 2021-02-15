{$I-,Q-,R-,S-}
const
        FileIn   = 'Input.txt' ;
        FileOut  = 'Output.txt';
        HighV    = 10000       ;
        HighE    = 100000      ;
        Infinity = 1000000000  ;

type
        ListType = record
                      First  : longint ;
                      Second : longint ;
                      Dist   : longint ;
                   end;

var
        V,E,A,B                        : longint  ;
        ExistSolution                  : boolean  ;
        Distance : array [1..HighV] of   longint  ;
        List : array [1..HighE] of       ListType ;

procedure InputData;
var
        i : longint ;
begin
        Assign( Input , FileIn );
        ReSet( Input );
        Read( V , E );
        for i:=1 to E do
           Read( List[i].First , List[i].Second , List[i].Dist );
        Read( A , B );
        Close( Input );
end;

procedure Solution;
var
        i,j : longint ;
begin
        for i:=1 to V do
           Distance[i] := Infinity ;
        Distance[A] := 0 ;
        for i:=1 to V-1 do
           for j:=1 to E do
              if Distance[List[j].First] <> Infinity then
                if Distance[List[j].First]+List[j].Dist <
                                                Distance[List[j].Second]
                   then Distance[List[j].Second] :=
                                       Distance[List[j].First]+List[j].Dist ;
        ExistSolution := TRUE ;
        for i:=1 to E do
           if Distance[List[i].First] <> Infinity then
             if Distance[List[i].First]+List[i].Dist <
                     Distance[List[i].Second] then ExistSolution := FALSE ;
end;

procedure OutputData;
begin
        Assign( Output , FileOut );
        ReWrite( Output );
        if ExistSolution then WriteLn( Distance[B] )
                         else WriteLn( 'There is a route of negative weigth');
        Close( Output );
end;

begin
        InputData;
        Solution;
        OutputData;
end.