{$Apptype Console}
const
     FileIn  = 'eiler.in' ;
     FileOut = 'eiler.out';
     HighE   = 20000      ;
     HighV   = 200        ;

type
    DugaType = record
                   First  : integer ;
                   Second : integer ;
                   Next   : integer ;
                   Delete : integer ;
               end;


var
   V,E,LSol                      : integer  ;
   Duga  : array [1..2*HighE] of   DugaType ;
   Graph : array [1..HighV]   of   integer  ;
   Sol   : array [1..HighE]   of   integer  ;
   f                             : text     ;

procedure Input;
var
   i : integer ;
begin
     Assign( f , FileIn );
     ReSet( f );
     ReadLn( f , V , E );
     for i:=1 to E do
        with Duga[i] do
          begin
               Read( f , First , Second );
               Duga[i].Next := Graph[First] ;
               Graph[First] := i ;
               Duga[i+E].First := Second ;
               Duga[i+E].Second := First ;
               Duga[i+E].Next := Graph[Second] ;
               Graph[Second] := i+E ;
          end;
     Close( f );
end;

procedure Step( p : integer );
var
   Elem : integer ;
begin
     Elem := Graph[p] ;
     while Elem <> 0 do
       with Duga[Elem] do
         begin
              if Delete = 0 then
                  begin
                       Delete := 1 ;
                       if Elem > E then Duga[Elem-E].Delete := 1
                                   else Duga[Elem+E].Delete := 1 ;
                       Step( Second );
              end;
              Elem := Next ;
         end;
     Inc( LSol );
     Sol[LSol] := p ;
end;

procedure Output;
var
   i : integer ;
begin
     Assign( f , FileOut );
     ReWrite( f );
     for i:=1 to LSol-1 do
        Write( f , Sol[i] , ' ' );
     WriteLn( f , Sol[LSol] );
     Close( f );
end;

begin
     Input;
     Step( 1 );
     Output;
end.
