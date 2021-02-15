{$IFDEF NORMAL}
  {$I-,OBJECTCHECKS-,Q-,R-,S-}
{$ENDIF NORMAL}
{$IFDEF DEBUG}
  {$I+,OBJECTCHECKS-,Q+,R+,S-}
{$ENDIF DEBUG}
{$IFDEF RELEASE}
  {$I-,OBJECTCHECKS-,Q-,R-,S-}
{$ENDIF RELEASE}
Program Peres_Okr;
var
x1,x2,y1,y2,r1,r2,x0,y0:Extended;
a1,a,b,c,d,Otw_y1,Otw_y2,Otw_x1,Otw_x2:Extended;


  Procedure Inp;
  begin
   Assign(Input,'Input.txt');
   Reset(Input);
   Readln(x1,y1,r1);
   Readln(x2,y2,r2);
   Close(Input);
   Assign(Output,'Output.txt');
   ReWrite(Output);
   if (x1=x2) and (y1=y2) and (r1=r2) then begin
                                           Writeln('-1');
                                           Close(Output);
                                           Halt;
                                           end;
  end;

  Procedure Par_Per;
  begin
  x0:=x1;
  y0:=y1;
  x1:=x1-x0;
  y1:=y1-y0;
  x2:=x2-x0;
  y2:=y2-y0;
  end;

  Procedure Toch_Per_y;
  begin
  a1:=(Sqr(r1)-Sqr(r2)+Sqr(x2)+Sqr(y2))/2;
  a:=Sqr(y2)+Sqr(x2);
  b:=-2*a1*y2;
  c:=Sqr(a1)-Sqr(r1*x2);
  d:=Sqr(b)-4*a*c;
  if d=0 then Otw_y1:=-b/(2*a);
  if d>0 then begin
              Otw_y1:=(-b+Sqrt(d))/(2*a);
              Otw_y2:=(-b-Sqrt(d))/(2*a);
              end;

  if d<0 then begin
              writeln(0);
              Close(Output);
              Halt;
              end;
  end;

  Procedure Toch_Per_x;
  begin
  if d=0 then Otw_x1:=(a1-Otw_y1*y2)/x2;
  if d>0 then begin
              Otw_x1:=(a1-Otw_y1*y2)/x2;
              Otw_x2:=(a1-Otw_y2*y2)/x2;
              end;

  end;

  Procedure Peren_Toch;
  begin
  if d=0 then begin
              Otw_x1:=Otw_x1+x0;
              Otw_y1:=Otw_y1+y0;
              end;
  if d>0 then begin
              Otw_x1:=Otw_x1+x0;
              Otw_x2:=Otw_x2+x0;
              Otw_y1:=Otw_y1+y0;
              Otw_y2:=Otw_y2+y0;
              end;
  end;

  Procedure Out;
  begin
   if d=0 then begin
               writeln(1);
               writeln(Otw_x1:0:14,' ',Otw_y1:0:14);
               end;
   if d>0 then begin
               writeln(2);
               writeln(Otw_x1:0:14,' ',Otw_y1:0:14);
               writeln(Otw_x2:0:14,' ',Otw_y2:0:14);
               end;
  Close(Output);
  end;
begin
Inp;
Par_Per;
Toch_Per_y;
Toch_Per_x;
Peren_Toch;
Out;
end.
