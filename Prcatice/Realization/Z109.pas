Var
 A,B,Ost,i,j,cod,per : Longint;
 F : Boolean;
 Z,P : Array [1..10000] Of Longint;
 S,S1 : String;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     ReadLn(S);
    Close(Input);
    S1:=''; A:=0; B:=0;
    For i:=1 to Length(s) do
        if s[i] = '/' then begin
                               Val(s1,a,cod);
                               S1:='';
                           end
                      else S1:=S1+s[i];
   Val(s1,b,cod);
   Ost:=A mod B;
   i:=0; F:=False; per:=0;
   While Ost <> 0 do
   Begin
       Inc(i);
       Ost:=Ost * 10;
       Z[i]:=Ost;
       Inc(P[Ost]);
       If P[Ost] >= 2 then Inc(per);
       If P[Ost] = 3 then begin
                              F:=True;
                              Break;
                          end;
       Ost:=Ost mod B;
   End;
   Assign(Output,'Output.txt');
   ReWrite(Output);
    If A mod B = 0 then Write(a div b)
                   else begin
                            Write(A div B,'.');
                            j:=1;
                            while j <= i do
                            begin
                                if (P[Z[j]] = 1) or (P[Z[j]] = 2) then Write(Z[j] div B);
                                If P[Z[j]] = 3 then begin
                                                        Write('(',Z[j] div B);
                                                        i:=i-per;
                                                    end;
                                Inc(j);
                            end;
                            If F then Write(')');
                        end;
   Close(Output);
End.
