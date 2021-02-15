{
   Solved by Sikorsky Alexey
   Time : O( N * M )
   Memory : O( N * M )
}

Const MaxN = 1000;

Var 
 S:Array[1..MaxN] of AnsiString;
 H, V:Array[1..MaxN, 1..MaxN] of LongInt;
 N, M, K, Ans:LongInt;

 Procedure InputData;
  Var F:Text;
      i:LongInt;
   Begin
    Assign(F, 'input.txt');
    Reset(F);
    Readln(F, N, M, K);
    For i:=1 to N do Readln(F, S[i]);
    Close(F);
   end;

 Procedure ProcessData;
  Var i, j:LongInt;
   Begin
    For i:=1 to N do
     For j:=1 to M do
      if S[i][j] = '.' then
       Begin
        if i > 1 then V[i, j]:=V[i - 1, j] + 1 else V[i, j]:=1;
        if j > 1 then H[i, j]:=H[i, j - 1] + 1 else H[i, j]:=1;
       end else
       Begin
        V[i, j]:=0;
        H[i, j]:=0;
       end;
    For i:=1 to N do
     For j:=1 to M do
      Begin
       if V[i, j] >= K then Inc(Ans);
       if H[i, j] >= K then Inc(Ans);
      end;
   end;

 Procedure OutputData;
  Var F:Text;
   Begin
    Assign(F, 'output.txt');
    Rewrite(F);
    Writeln(F, Ans);
    Close(F);
   end;

 Begin
  InputData;
  ProcessData;
  OutputData;
 end.
