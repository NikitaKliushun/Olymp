{
Московская городская олимпиада 2003/04
Задача "Великая сеча"
Ильичёв Алексей
}

{$Q+,R+}
Const
  InputFile = 'b.in';
  OutputFile = 'b.out';

Var
  N, M, I, J : Integer;
  FirstWins : Array[0..1, -1..202, -1..100] of Boolean;
  MC : Integer;
  H, S : Array[1..5] Of Integer;

Procedure AddMove(I, J : Integer; F : Boolean);
Begin
  If F Then Exit;
  Inc(MC);
  H[MC] := I;
  S[MC] := J;
End;

Begin
  Assign(Input, InputFile);
  Reset(Input);
  Assign(Output, OutputFile);
  ReWrite(Output);
  Read(N, M);
  FirstWins[0, 0, 0] := False;
  FirstWins[1, 0, 0] := True;
  For I := -1 to 100 do Begin
    FirstWins[0, -1, I] := True;
    FirstWins[1, -1, I] := True;
  End;
  For I := -1 to 202 do Begin
    FirstWins[0, I, -1] := True;
    FirstWins[1, I, -1] := True;
  End;
  For I := 0 to M Do
    For J := 0 to 201 Do If (I <> 0) or (J <> 0) Then Begin
      FirstWins[0, J, I] := not (FirstWins[1, J, I - 1]
                             and FirstWins[0, J, I - 1]
                             and FirstWins[0, J + 1, I - 1]
                             and FirstWins[1, J - 1, I]
                             and FirstWins[0, J - 1, I]);
      FirstWins[1, J, I] := not (FirstWins[1, J, I - 1]
                             and FirstWins[0, J, I - 1]
                             and FirstWins[1, J + 1, I - 1]
                             and FirstWins[1, J - 1, I]
                             and FirstWins[0, J - 1, I]
                             and FirstWins[0, J, I]);
    End;
  If Not FirstWins[0, N, M] Then WriteLn('2') Else Begin
    WriteLn('1');
    MC := 0;
    AddMove(2, 1, FirstWins[1, N - 1, M]);
    AddMove(2, 2, FirstWins[0, N - 1, M]);
    AddMove(3, 1, FirstWins[0, N + 1, M - 1]);
    AddMove(3, 2, FirstWins[1, N, M - 1]);
    AddMove(3, 3, FirstWins[0, N, M - 1]);
    WriteLn(MC);
    For I := 1 to MC Do WriteLn(H[I], ' ', S[I]);
  End;
  Close(Input);
  Close(Output);
End.