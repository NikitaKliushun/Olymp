Var
 x1,cod,Max : Longint;
 x : Char;
 Word,maxWord : String;
 Sym : array [1..256] of boolean;

procedure Check;
Var
 Dif,j : Longint;

Begin
    Dif:=0;
    for j:=1 to 256 do
     if Sym[j] then Inc(Dif);
    if Dif > Max then begin
                          Max:=Dif;
                          maxWord:=Word;
                      end;
End;

Begin
        FillChar(sym,sizeof(sym),false);
        Max:=0;
        while not EOLn do
        begin
                Read(x);
                if (x = ' ') then begin
                                        Check;
                                        FillChar(sym,sizeof(sym),false);
                                        Word:='';
                                  end
                             else begin
                                        Sym[Ord(x)]:=true;
                                        Word:=Word + x;
                                  end;

        end;
        if Max = 0 then Check;
        Write(maxWord);
End.