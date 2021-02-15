{$I-,Q-,R-,S-}
const
	FileIn  = 'Input.txt' ;
	FileOut = 'Output.txt';
        HighV   = 100000      ;
        HighE   = 1000000     ;

type
        ListType = record
                      w    : longint ;
                      Next : longint ;
                   end;

var
        V,E,LList,LSolve                      : longint  ;
        List            : array [1..HighE] of   ListType ;
        Head,Solve,Mark : array [1..HighV] of   longint  ;

procedure AddEdge( a , b : longint );
begin
        Inc( LList );
        List[LList].w := b ;
        List[LList].Next := Head[a] ;
        Head[a] := LList ;
end;

procedure InputData;
var
        i,First,Second : longint ;
begin
	Assign( Input , FileIn );
	ReSet( Input );
        ReadLn( V , E );
        for i:=1 to E do
           begin
                ReadLn( First , Second );
                AddEdge( First , Second );
           end;
	Close( Input );
end;

procedure DFS( u : longint );
var
        Curr : longint ;
begin
        Mark[u] := 1 ;
        Curr := Head[u] ;
        while Curr <> 0 do
          begin
               if Mark[List[Curr].w] = 0 then DFS( List[Curr].w );
               Curr := List[Curr].Next ;
          end;
        Inc( LSolve );
        Solve[LSolve] := u ;
end;

procedure OutputData;
var
        i : longint ;
begin
	Assign( Output , FileOut );
	ReWrite( Output );
        DFS( 1 );
        for i:=LSolve downto 1 do
           Write( Solve[i] , ' ' );
	Close( Output );
end;

begin
	InputData;
	OutputData;
end.
