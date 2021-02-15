{$apptype console}
program         Template;

var
  N             : Integer;
  S             : array[1..5000] of Char;
  Repeated      : array[1..5000] of Integer;
  Next, Prev    : array[1..5000, #32..#255] of Integer;

procedure       OpenFiles;
begin
  Assign(Input, 'print.in');
  Reset(Input);
  Assign(Output, 'print.out');
  Rewrite(Output);
end;

procedure       CloseFiles;
begin
  Close(Input);
  Close(Output);
end;

procedure       ReadData;
begin
  N := 0;
  while not Eoln do begin
    Inc(N);
    Read(S[N]);
  end;
end;

procedure       Solve;
var
  I, J, NextPos : Integer;
  StartPos, L   : Integer;
  OK            : Boolean;
begin
  FillChar(Next, SizeOf(Next), 0);
  for I := N downto 2 do begin
    Move(Next[I], Next[I - 1], SizeOf(Next[I]));
    Next[I - 1, S[I]] := I;
  end;

  FillChar(Prev, SizeOf(Prev), 0);
  for I := 1 to N - 1 do begin
    Move(Prev[I], Prev[I + 1], SizeOf(Prev[I]));
    Prev[I + 1, S[I]] := I;
  end;

  L := N; OK := False; I := 1;
  while I < N do begin
    NextPos := Next[I, S[I]];
    while Next[NextPos, S[I]] > 0 do
      NextPos := Next[NextPos, S[I]];

    while (NextPos > I) and not OK do begin
      StartPos := 2 * I - NextPos + 1;
      if (StartPos > 0) and (StartPos < I) then begin
        OK := True;
        for J := 1 to I - StartPos + 1 do
          if S[I + J] <> S[StartPos + J - 1] then begin
            OK := False;
            Break;
          end;
      end;
      NextPos := Prev[NextPos, S[I]];
    end;

    if OK then begin
      Repeated[I + 1] := I - StartPos + 1;
      Dec(L, I - StartPos);
      Inc(I, I - StartPos + 1);

      OK := False;
    end else
      Inc(I);
  end;

  WriteLn(L + 1);

  I := 1;
  while I <= N do begin
    if Repeated[I] > 0 then begin
      WriteLn('Repeat(', Repeated[I], ');');
      Inc(I, Repeated[I]);
    end else begin
      WriteLn('Letter(''', S[I], ''');');
      Inc(I);
    end;
  end;
  WriteLn('End.');
end;

begin
  OpenFiles;
  ReadData;
  Solve;
  CloseFiles;
end.
