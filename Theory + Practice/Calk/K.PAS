program Task;
var
    St1                  :            array [1..1000] of Char;
    St2                  :            array [1..1000] of LongInt;
    S,St                 :            String;
    F,i,Ch,Uk1,Uk2,X,Y   :            LongInt;
    Cod                  :            Integer;
    Z                    :            Char;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(S);
    Close(Input);
end;

procedure In_Stek1(C : Char;var XX : LongInt);
begin
    Inc(XX);
    St1[XX]:=C;
end;

procedure In_Stek2(C : LongInt;var XX : LongInt);
begin
    Inc(XX);
    St2[XX]:=C;
end;

procedure From_Stek1(var C : Char; var XX : LongInt);
begin
    C:=St1[XX];
    St1[XX]:='#';
    Dec(XX);
end;

procedure From_Stek2(var C : LongInt; var XX : LongInt);
begin
    C:=St2[XX];
    St2[XX]:=0;
    Dec(XX);
end;

procedure Sol;
begin
    F:=1; St:='';
    for i:=1 to Length(S) do
      begin
          if (S[i] in ['*','/'])  then
                    begin
                        Val(St,Ch,Cod);
                        Ch:=Ch * F;
                        F:=1;
                        if St <> '' then In_Stek2(Ch,Uk2);
                        In_Stek1(S[i],Uk1);
                        St:='';
                    end;
          if S[i] = '(' then  In_Stek1(S[i],Uk1);
          if S[i] in ['+'] then
                    begin
                       if st <> '' then begin
                        Val(St,Ch,Cod);
                        Ch:=Ch * F;
                        F:=1;
                        In_Stek2(Ch,Uk2);
                        St:='';         end;
                        while (Uk1 > 0) and (St1[Uk1] <> '+') and (St1[Uk1] <> '-')
                              and (St1[Uk1] <> '(') do
                        begin
                            while Uk2 > 1 do
                                begin
                                    From_Stek2(Y,Uk2);
                                    From_Stek2(X,Uk2);
                                    From_Stek1(Z,Uk1);
                                    if Z = '*' then X:=X * Y;
                                    if Z = '/' then X:=X div Y;
                                    In_Stek2(X,Uk2);
                                end;
                        end;
                        In_Stek1(S[i],Uk1);
                    end;
          if S[i] = '-' then begin
                          if St <> '' then begin  Val(St,Ch,Cod);
                                                  Ch:=Ch * F;
                                                  F:=1;
                                                  In_Stek2(Ch,Uk2);
                                                  St:='';
                                                  end;
                        if (Uk1 > 0) and (St1[Uk1] <> '+') and (St1[Uk1] <> '-')
                              {and (S[i] <> '-')}  then
                        begin
                            while Uk2 > 1 do
                                begin
                                    From_Stek2(Y,Uk2);
                                    From_Stek2(X,Uk2);
                                    From_Stek1(Z,Uk1);
                                    if Z = '*' then X:=X * Y;
                                    if Z = '/' then X:=X div Y;
                                    In_Stek2(X,Uk2);
                                end;
                         end;
                        if (Uk2 = 0) or
                                    ((i > 1) and (S[i-1] in ['+','*','/','-','(']))

                                           then F:=-1 * F
                                           else In_Stek1(S[i],Uk1);
                             end;
          if S[i] = ')' then begin
                        Val(St,Ch,Cod);
                        Ch:=Ch * F;
                        F:=1;
                        In_Stek2(Ch,Uk2);
                        St:='';
                        while (Uk1 > 1) and (St1[Uk1] <> '(') do
                               begin
                            From_Stek2(Y,Uk2);
                            From_Stek2(X,Uk2);
                            From_Stek1(Z,Uk1);
                            if Z = '*' then X:=X * Y;
                            if Z = '/' then X:=X div Y;
                            if Z = '+' then X:=X + Y;
                            if Z = '-' then X:=X - Y;
                            In_Stek2(X,Uk2);
                               end;
                         end;
          if S[i] in ['0'..'9'] then St:=St + S[i];
      end;
Val(St,Ch,Cod);
Ch:=Ch * F;
F:=1;
In_Stek2(Ch,Uk2);
end;

begin
    InputData;
    Sol;
    while Uk2 > 1 do
        begin
           From_Stek2(Y,Uk2);
           From_Stek2(X,Uk2);
           From_Stek1(Z,Uk1);
           if Z = '*' then X:=X * Y;
           if Z = '/' then X:=X div Y;
           if Z = '+' then X:=X + Y;
           if Z = '-' then X:=X - Y;
           In_Stek2(X,Uk2);
        end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(St2[1]);
    Close(Output);
end.