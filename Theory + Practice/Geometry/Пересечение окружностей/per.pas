{$A+,B-,D-,E+,F-,G-,I-,L-,N+,O-,P-,Q-,R-,S-,T-,V-,X-}
{$M 16384,0,655360}

{Task. Пересечение окружностей }
{(C) Чернушевич Игорь }

program Task;
const
    NameIn  = 'Input.txt';
    NameOut = 'Output.txt';

var
    f             :     text;
    x1,y1,r1      :     extended;
    x2,y2,r2      :     extended;
    rast,x0,y0    :     extended;
    a,b,c,z,D     :     extended;
    t1_x,t1_y     :     extended;
    t2_x,t2_y     :     extended;

procedure InputData;
begin
  Assign(f,NameIn);
  ReSet(f);
  ReadLn(f,x1,y1,r1);
  ReadLn(f,x2,y2,r2);
  Close(f);
end;

procedure Paral_Perenos;
begin
  x0:=x2;
  y0:=y2;
  x1:=x1 - x0;
  y1:=y1 - y0;
  x2:=x2 - x0;
  y2:=y2 - y0;
end;

function Yes_No : boolean;
begin
  rast:=Sqrt(Sqr(x1)+Sqr(y1));
  if (rast > r1+r2) or (rast+r1 < r2) or (rast+r2 < r1)
                             then Yes_No:=false
                             else Yes_No:=true;
end;

procedure OutputData;
begin
  Assign(f,NameOut);
  ReWrite(f);
end;

procedure Tochki_Per_Y;
begin
  z := -Sqr(x1)-Sqr(y1)+Sqr(r1)-Sqr(r2);
  a:=-4*(Sqr(x1)+Sqr(y1));
  b:=-4*z*y1;
  c:=-Sqr(z)+(4*Sqr(x1)*Sqr(r2));
  D:=Sqr(b) - 4*a*c;
  t1_y:=(-b+Sqrt(D)) / (2*a);
  t2_y:=(-b-Sqrt(D)) / (2*a);
end;

procedure Tochki_Per_X;
begin
  z := -Sqr(x1)-Sqr(y1)+Sqr(r1)-Sqr(r2);
  a:=-4*(Sqr(x1)+Sqr(y1));
  b:=-4*z*x1;
  c:=-Sqr(z)+(4*Sqr(y1)*Sqr(r2));
  D:=Sqr(b) - 4*a*c;
  t1_x:=(-b-Sqrt(D)) / (2*a);
  t2_x:=(-b+Sqrt(D)) / (2*a);
end;

procedure Otvet;
begin
  t1_y:=t1_y + y0; {Переносим точки обратно}
  t1_x:=t1_x + x0;
  t2_y:=t2_y + y0;
  t2_x:=t2_x + x0;
  if t1_y = t2_y then begin
                        WriteLn(f,1);
                        WriteLn(f,t1_x:0:14,' ',t1_y:0:14);
                      end
                 else begin
                        WriteLn(f,2);
                        WriteLn(f,t1_x:0:14,' ',t1_y:0:14);
                        WriteLn(f,t2_x:0:14,' ',t2_y:0:14);
                      end;
end;

begin
  InputData;
  Paral_Perenos;
  OutputData;
  if (x1=x2) and (y1=y2) and (r1=r2) then begin
                                            WriteLn(f,-1);
                                            Close(f);
                                            Halt;
                                          end;
  if Not Yes_No then WriteLn(f,0)
                else
                   begin
                     Tochki_Per_Y;
                     Tochki_Per_X;
                     Otvet;
                   end;
  Close(f);
end.