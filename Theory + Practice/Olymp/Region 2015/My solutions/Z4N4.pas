{Клюуш Никита Сергеевич, г. Березино, Средняя школа №3}

Var
 N,i,j,L,c : Longint;
 P : Array [1..1000] of Longint;
 x : Char;

Begin
    For i:=1 to 1000 do
     P[i]:=10;
    Assign(Input,'Input.txt');
    Assign(output,'Output.txt');
    ReSet(Input);
    ReWrite(Output);
     ReadLn(N);
     For i:=1 to N do
     begin
         j:=0;
         while not EoLn do
         begin
             Read(x);
             Inc(j);
             If x <> '?' then
                begin
                    c:=Ord(x) - Ord('0');
                    if p[j] = 10 then p[j]:=c
                                 else
                      if p[j] <> c then begin
                                            WriteLn('NO');
                                            Write(i);
                                            Close(Input);
                                            Close(Output);
                                            Halt;
                                        end;
                end;
         end;
         L:=j;
         ReadLn;
     end;
     For i:=1 to L do
      If p[i] = 10 then Write('?')
                   else Write(p[i]);
    Close(Input);
    Close(Output);
End.
