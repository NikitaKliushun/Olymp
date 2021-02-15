{Klyshyn Nikita, School ü3, Form 8}
Var
 Max,Kol:Longint;
 X1,X:Char;
 F,FF:Text;

Begin
 Assign(F,'In1.txt');
 Assign(FF,'In2.txt');
 ReSet(F);
 ReSet(FF);
  Kol:=0;
  Max:=0;
  Read(F,X);
  Read(FF,X1);
  While (X in ['a'..'z']) and (X1 in ['a'..'z'])  do
  Begin
   If X=X1 then begin
                    Inc(Kol);
                    Read(FF,X1);
                    Read(F,X);
                   end
               else If Kol>Max then begin
                                     Max:=Kol;
                                     Read(FF,X1);
                                    end
                               else Read(FF,X1);
   End;
 If Kol>Max then Max:=Kol;
 Close(F);
 Close(FF);
 Assign(Output,'Out.txt');
 ReWrite(Output);
  Write(Max);
 Close(Output);
End.



