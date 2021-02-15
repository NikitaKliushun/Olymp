{$A+,B-,D+,E+,F+,G-,I+,L+,N-,O+,P-,Q-,R-,S-,T-,V-,X-}
{$M 65520,0,655360}

{
 (C) Sakov Pavel.
 10.09.2001
 16:03
}

const
     NameIn  =  'input.txt' ;
     NameOut =  'output.txt' ;
     TimeOut =  18 * 10 ;

var
   FileIn , FileOut             :  text ;
   Metki                        :  array [0..101] of boolean ;
   Dom , Dom2                   :  array [0..101] of integer ;
   Matr                         :  array [0..6,0..101] of integer ;
   Posl                         :  array [0..201] of integer ;
   A , B                        :  array [0..101] of integer ;
   i , n                        :  integer ;
   Timer                        :  longint absolute $0000:$046C ;
   Time                         :  longint ;

procedure DataIn;
begin
     Assign( FileIn , NameIn );
     ReSet( FileIn );
     Readln( FileIn , n );
     for i := 1 to n do
       Readln( FileIn , A[i] , B[i] );
     Close( FileIn );
     FillChar( Dom , SizeOf(Dom) , 0 );
     FillChar( Matr , SizeOf(Matr) , 0 );
     FillChar( Metki , SizeOf(Metki) , True );
     for i := 1 to n do
       begin
            Inc( Dom[A[i]] );
            Matr[A[i],Dom[A[i]]] := i ;
            if A[i] <> B[i] then
               begin
                    Inc( Dom[B[i]] );
                    Matr[B[i],Dom[B[i]]] := i ;
               end;
       end;
     Dom2 := Dom ;
end;

procedure DataOut( ToWrite  :  string );
begin
     Assign( FileOut , NameOut );
     ReWrite( FileOut );
     Writeln( FileOut , ToWrite );
     Close( FileOut );
end;

procedure SolveProblem( InParam , y  :  integer );

var
   j  :  integer ;

begin
     if InParam > n then
            begin
                 DataOut( 'YES' );
                 Halt;
            end;
     if Timer - Time >= TimeOut then
            begin
                 DataOut( 'NO' );
                 Halt;
            end;              
     if InParam = 1 then
        begin
             for j := 1 to n do
               begin
                    Posl[y+1] := A[j] ;
                    Posl[y+2] := B[j] ;
                    Dec(Dom[A[j]]);
                    Dec(Dom[B[j]]);
                    Metki[j] := False ;
                    SolveProblem( InParam + 1 , y + 2 );
                    Posl[y+1] := B[j] ;
                    Posl[y+2] := A[j] ;
                    SolveProblem( InParam + 1 , y + 2 );
                    Inc(Dom[A[j]]);
                    Inc(Dom[B[j]]);
                    Posl[y+1] := 0 ;
                    Posl[y+2] := 0 ;
               end;
        end
                    else
        if Dom[Posl[y]] > 0 then
             begin
                  for j := 1 to Dom2[Posl[y]] do
                     if Metki[ Matr[ Posl[y] , j ] ] then
                        begin
                             Dec( Dom[Posl[y]] );
                             Metki[ Matr[ Posl[y] , j ] ] := False ;
                             if Posl[y] = A[Matr[ Posl[y] , j ]] then
                                 begin
                                      Posl[y+1] := A[Matr[ Posl[y] , j ]] ;
                                      Posl[y+2] := B[Matr[ Posl[y] , j ]] ;
                                 end
                                                                 else
                                 begin
                                      Posl[y+1] := B[Matr[ Posl[y] , j ]] ;
                                      Posl[y+2] := A[Matr[ Posl[y] , j ]] ;
                                 end;
                             SolveProblem( InParam + 1 , y + 2 );
                             Inc(Dom[Posl[y]]);
                             Metki[ Matr[ Posl[y] , j ] ] := True  ;
                        end;
             end;
end;

begin
     Time := Timer ;
     DataIn;
     SolveProblem( 1 , 0 );
     DataOut('NO');
end.