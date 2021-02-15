{Клюшун Никита Сергеевич, г. Березино, Задача 1}

Var
  N,i,j,x,y,l,cod : Longint;
  c1,c : Char;
  a : Array [1..10,1..10] of Char;

Function Check : Boolean;
Var
  i,j : Longint;

Begin
    Check:=True;
    For i:=1 to 10 do
     For j:=1 to 10 do
      if a[i,j] = '#' then begin
                               Check:=False;
                               Exit;
                           end;
End;

Function Check_h (x,y : Longint) : Boolean;
Var
 i,j : Longint;

Begin
    Check_h:=True;
    i:=x; j:=y;
    while (j <= 10) and (a[i,j] <> '.') do
    begin
        if a[i,j] = '#' then begin
                                 Check_h:=False;
                                 Exit;
                             end;
        Inc(j);
    end;
    i:=x; j:=y;
    while (j > 0) and (a[i,j] <> '.') do
    begin
        if a[i,j] = '#' then begin
                                 Check_h:=False;
                                 Exit;
                             end;
        Dec(j);
    end;
End;

Function Check_v (x,y : Longint) : Boolean;
Var
 i,j : Longint;

Begin
    Check_v:=True;
    i:=x; j:=y;
    while (i <= 10) and (a[i,j] <> '.') do
    begin
        if a[i,j] = '#' then begin
                                 Check_v:=False;
                                 Exit;
                             end;
        Inc(i);
    end;
    i:=x; j:=y;
    while (i > 0) and (a[i,j] <> '.') do
    begin
        if a[i,j] = '#' then begin
                                 Check_v:=False;
                                 Exit;
                             end;
        Dec(i);
    end;
End;

Procedure Sol (x,y : Longint);
Var
  i,j : Longint;

Begin
    if (a[x,y] = '.') or (a[x,y] = '+') then begin
                                                 WriteLn('MISS');
                                                 Exit;
                                             end;
    if a[x,y] = '#' then begin
                             i:=x; j:=y;
                             While (i > 0) and ((a[i,j] = '#') or (a[i,j] = '+')) do
                              Dec(i);
                             if i < x - 1 then begin
                                                   a[x,y]:='+';
                                                   if Check_v(x,y) then if Check then begin
                                                                                          Write('GAME OVER');
                                                                                          Close(Output);
                                                                                          Close(Input);
                                                                                          Halt;
                                                                                      end
                                                                                 else WriteLn('DEAD')
                                                                   else WriteLn('HIT');
                                                   Exit;
                                               end;
                            i:=x; j:=y;
                             While (j <= 10) and ((a[i,j] = '#') or (a[i,j] = '+')) do
                              Inc(j);
                             if j > y + 1 then begin
                                                   a[x,y]:='+';
                                                   if Check_h(x,y) then if Check then begin
                                                                                          Write('GAME OVER');
                                                                                          Close(Output);
                                                                                          Close(Input);
                                                                                          Halt;
                                                                                      end
                                                                                 else WriteLn('DEAD')
                                                                   else WriteLn('HIT');
                                                   Exit;
                                               end;
                             i:=x; j:=y;
                             While (i <= 10) and ((a[i,j] = '#') or (a[i,j] = '+'))  do
                              Inc(i);
                             if i > x + 1 then begin
                                                   a[x,y]:='+';
                                                   if Check_v(x,y) then if Check then begin
                                                                                          Write('GAME OVER');
                                                                                          Close(Output);
                                                                                          Close(Input);
                                                                                          Halt;
                                                                                      end
                                                                                  else WriteLn('DEAD')
                                                                   else WriteLn('HIT');
                                                   Exit;
                                               end;
                             i:=x; j:=y;
                             While (j > 0) and ((a[i,j] = '#') or (a[i,j] = '+')) do
                              Dec(j);
                             if j < y - 1 then begin
                                                   a[x,y]:='+';
                                                   if Check_h(x,y) then if Check then begin
                                                                                          Write('GAME OVER');
                                                                                          Close(Output);
                                                                                          Close(Input);
                                                                                          Halt;
                                                                                      end
                                                                                 else WriteLn('DEAD')
                                                                   else WriteLn('HIT');
                                                   Exit;
                                               end;
                             a[x,y]:='+';
                             if Check then begin
                                               Write('GAME OVER');
                                               Close(Input);
                                               Close(Output);
                                               Halt;
                                           end
                                      else begin
                                               WriteLn('DEAD');
                                               Exit;
                                           end;
                         end;
End;

Begin
    Assign(Input,'Input.txt');
    Assign(Output,'Output.txt');
    ReSet(Input);
    ReWrite(Output);
     For i:=1 to 10 do
     begin
         For j:=1 to 10 do
          Read(a[i,j]);
         ReadLn;
     end;
     ReadLn(N);
     For i:=1 to N do
     begin
         Read(x,c1,c);
          if c = 'k' then y:=10
                     else y:=Ord(c) - Ord('a') + 1;
          Sol(x,y);
     end;
End.
