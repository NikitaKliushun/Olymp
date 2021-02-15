{$I-,OBJECTCHECKS-,Q-,R-,S-}
{ Minimal spanning tree by Kruskal method O( ElogV ) }
const
        FileIn  = 'Input.txt' ;
        FileOut = 'Output.txt';
        HighV   = 10000       ;
        HighE   = 100000      ;

type
        EdgeType = record
                      a    : longint ;
                      b    : longint ;
                      Cost : longint ;
                   end;

var
        V,E,Solve                       : longint  ;
        Edge      : array [1..HighE] of   EdgeType ;
        Prev,Rank : array [1..HighV] of   longint  ;

procedure InputData;
var
        i : longint ;
begin
        Assign( Input , FileIn  );
        ReSet( Input );
        Read( V , E );
        for i:=1 to E do
           Read( Edge[i].a , Edge[i].b , Edge[i].Cost );
        Close( Input );
end;

procedure OutputData;
begin
        Assign( Output , FileOut );
        ReWrite( Output );
        WriteLn( Solve );
        Close( Output );
end;

procedure Init;
var
        i : longint ;
begin
        for i:=1 to V do
           Prev[i] := i ;
end;

procedure QuickSort( l , r : longint );
var
        i,j,x : longint  ;
        Buff  : EdgeType ;
begin
        i := l ;
        j := r ;
        x := Edge[l+Random( r-l )].Cost ;
        while i <= j do
          begin
               while Edge[i].Cost < x do
                 Inc( i );
               while Edge[j].Cost > x do
                 Dec( j );
               if i <= j then begin
                                   Buff := Edge[i] ;
                                   Edge[i] := Edge[j] ;
                                   Edge[j] := Buff ;
                                   Inc( i );
                                   Dec( j );
                              end;
          end;
        if l < j then QuickSort( l , j );
        if i < r then QuickSort( i , r );
end;

function FindSet( u : longint ) : longint ;
begin
        if Prev[u] <> u then Prev[u] := FindSet( Prev[u] );
        FindSet := Prev[u] ;
end;

procedure Union( a , b : longint );
begin
        if Rank[a] < Rank[b] then Prev[a] := b
                             else Prev[b] := a ;
        if Rank[a] = Rank[b] then Inc( Rank[a] );
end;

procedure SolveProblem;
var
        i : longint ;
begin
        Init;
        QuickSort( 1 , E );
        for i:=1 to E do
           if FindSet( Edge[i].a ) <> FindSet( Edge[i].b )
             then begin
                       Inc( Solve , Edge[i].Cost );
                       Union( FindSet( Edge[i].a ) , FindSet( Edge[i].b ) );
                       Dec( V );
                       if V = 1 then Break ;
                  end;
end;

begin
        InputData;
        SolveProblem;
        OutputData;
end.