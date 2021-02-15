{$IFDEF NORMAL}
  {$H-,I-,OBJECTCHECKS-,Q-,R-,S-}
{$ENDIF NORMAL}
{$IFDEF DEBUG}
  {$H-,I+,OBJECTCHECKS+,Q+,R+,S-}
{$ENDIF DEBUG}
{$IFDEF RELEASE}
  {$H-,I-,OBJECTCHECKS-,Q-,R-,S-}
{$ENDIF RELEASE}

{Халецкая Ольга Владимировна 11 класс,
Минская обл.,г.Березино.
Задача 1}
Program task;
 var
 k,min,t,p           :    LOnGint;
 i,a,b               :    LonGint;

Procedure Input1;
 begin
  Assign(Input,'input.txt');
  Reset(Input);
  Readln(k);
  Close(Input);
 end;


Procedure Prov2(x,y : LOnGInt);
 begin
  if Abs(x-y)+(k-x*y) < min then  begin
                                   min:=Abs(x-y)+(k-x*y);
                                   a:=x;
                                   b:=y;
                                   end;
 end;

Procedure Prov(x,y  :  LonGint);
 begin

  if  x*y <=k   then Prov2(x,y);
 end;


Procedure Per;
 begin
  t:=Trunc(k div 2);
  While p<=t do
   begin
   for i:=1 to t do
    if p*i<=k then Prov(p,i);
    Inc(p);
   end;
 end;

Procedure Output1;
 begin
  Assign(Output,'output.txt');
  Rewrite(Output);
  Writeln(a,' ',b);
  Close(Output);
 end;


 begin
  Input1;
   if k=2 then begin
                 a:=1;
                 b:=2;
                 Output1;
                 Halt
               end;
   if k=1 then begin
                a:=1;
                b:=1;
                Output1;
                Halt;
               end;
  min:=99999;
  p:=1;
  Per;
  Output1;
 end.
