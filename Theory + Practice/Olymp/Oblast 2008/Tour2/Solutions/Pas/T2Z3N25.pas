{Халецкая Ольга Владимировна 11 класс
Минская обл.,г.Березино
Задача 3}
{$IFDEF NORMAL}
  {$H-,I-,OBJECTCHECKS-,Q-,R-,S-}
{$ENDIF NORMAL}
{$IFDEF DEBUG}
  {$H-,I+,OBJECTCHECKS+,Q+,R+,S-}
{$ENDIF DEBUG}
{$IFDEF RELEASE}
  {$H-,I-,OBJECTCHECKS-,Q-,R-,S-}
{$ENDIF RELEASE}
Program task;
 var
n,m :   LonGInt;

 Procedure Input1;
  begin
   Assign(Input,'Input.txt');
   Reset(Input);
   Readln(n,m);
   Close(Input);
  end;

 Procedure Output1;
  begin
   Assign(Output,'Output.txt');
   Rewrite(Output);
   Writeln('0');
   Close(Output);
  end;

 begin
  Input1;
  Output1;
 end.
