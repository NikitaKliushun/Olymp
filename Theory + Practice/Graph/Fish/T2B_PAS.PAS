{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q-,R-,S-,T-,V-,X-}
{$M 65520,0,655360}

const
     NameIn  =  'input.txt' ;
     NameOut =  'output.txt' ;
     TimeOut =  18 * 10 ;

var
   FileIn , FileOut          :  text ;
   a , b , i , n , SaveN     :  integer ;
   Matr , MatrSave           :  array [0..101,0..101] of integer ;
   Dom , DomSave , CountDom  :  array [0..10] of integer ;
   Timer                     :  longint absolute $0000:$046C ;
   Time                      :  longint ;

procedure DataIn;

  procedure AccessData;
  begin
       Assign( FileIn , NameIn );
       ReSet( FileIn );
  end;

begin
     AccessData;
     Readln( FileIn , n );
     for i := 1 to n do
       begin
            Readln( FileIn , a , b );
            if a <> b then
              begin
                   Inc( CountDom[a] );
                   Inc( CountDom[b] );
              end;
       end;
     Close( FileIn );
     AccessData;
     Readln( FileIn , n );
     SaveN := n ;
     for i := 1 to n do
       begin
            Readln( FileIn , a , b );
            if a <> b then
              begin
                   Inc( Dom[a] );
                   Inc( Dom[b] );
                   Inc( Matr[a,b] );
                   Inc( Matr[b,a] );
              end;
            if (a = b) and (CountDom[a] = 0) then
              begin
                   Inc( Dom[a] );
                   Inc( Dom[b] );
                   Inc( Matr[a,b] );
                   Inc( Matr[b,a] );
              end;
            if (a = b) and (CountDom[a] <> 0) then
              Dec(SaveN);
       end;
     n := SaveN ;
     Close( FileIn );
     MatrSave := Matr ;
     DomSave := Dom ;
end;

procedure DataOut( OutText  :   string );
begin
     Assign( FileOut , NameOut );
     ReWrite( FileOut );
     Writeln( FileOut , OutText );
     Close( FileOut );
end;

procedure SolveProblem( InParameter , InParameter2 , CountRec :  integer );

var
   j  :  integer ;

begin
     if Timer - Time >= TimeOut then
         begin
              DataOut( 'NO' );
              Halt;
         end;
     if CountRec > n then
        begin
             DataOut( 'YES' );
             Halt;
        end;
     if (Dom[InParameter] = 0) and (Dom[InParameter2] = 0) then Exit ;
     for j := 0 to 6 do
       if Matr[InParameter,j] > 0 then
          begin
               Dec(Matr[InParameter,j]);
               Dec(Matr[j,InParameter]);
               Dec(Dom[InParameter]);
               Dec(Dom[j]);
               SolveProblem(j,InParameter2,CountRec + 1);
               Inc(Matr[InParameter,j]);
               Inc(Matr[j,InParameter]);
               Inc(Dom[InParameter]);
               Inc(Dom[j]);
          end
                                  else
       if Matr[InParameter2,j] > 0 then
          begin
               Dec(Matr[InParameter2,j]);
               Dec(Matr[j,InParameter2]);
               Dec(Dom[InParameter2]);
               Dec(Dom[j]);
               SolveProblem(InParameter,j,CountRec + 1);
               Inc(Matr[InParameter2,j]);
               Inc(Matr[j,InParameter2]);
               Inc(Dom[InParameter2]);
               Inc(Dom[j]);
          end;
end;

begin
     Time := Timer ;
     DataIn;
     for i := 0 to 6 do
       if Dom[i] > 0 then
           begin
                SolveProblem(i,i,1);
                Break;
           end;
     DataOut('NO');
end.

