uses
    Crt ;
const
     FileIn  = 'Eiler.In' ;
     FileOut = 'Eiler.Out';
     HighV   = 200        ;

var
   V,E,i,j,a,b,First,Last               : longint ;
   Result                               : boolean ;
   Graph : array [1..HighV,1..HighV] of   byte    ;
   f                                    : text    ;

procedure Input;
begin
     Assign( f , FileIn );
     ReSet( f );
     ReadLn( f , V , E );
     for i:=1 to E do
        begin
             ReadLn( f , a , b );
             Inc( Graph[a,b] );
             Inc( Graph[b,a] );
        end;
     Close( f );
end;

procedure Checking;
begin
     Assign( f , FileOut );
     ReSet( f );
     Result := TRUE ;
     Read( f , b );
     First := b ;
     while Not EoLn( f ) do
       begin
            a := b ;
            Read( f , b );
            Last := b ;
            if ( Graph[a,b] > 0 ) and
                ( a >= 0 ) and
                 ( b >= 0 ) then begin
                                      Dec( Graph[a,b] );
                                      Dec( Graph[b,a] );
                                 end
                            else begin
                                      Result := FALSE ;
                                      Break ;
                                 end;
       end;
     Close( f );
     for i:=1 to V do
        for j:=1 to V do
           if Graph[i,j] <> 0 then begin
                                        Result := FALSE ;
                                        Break ;
                                   end;
     if First <> Last then Result := FALSE ;
     if Result then begin
                         TextAttr := LightGreen ;
                         WriteLn( 'ok' );
                    end
               else begin
                         TextAttr := LightRed ;
                         WriteLn( 'wrong answer' );
                    end;
end;

begin
     Input;
     Checking;
end.