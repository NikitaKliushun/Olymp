{
  Time : O( N^2 )
  Memory : O( N )
  Solved by Sikorsky Alexey
}

Const MaxN = 100;

 Var A:Array[1..MaxN] of LongInt;
     N, Ans:LongInt;

  Procedure InputData;
   Var F:Text;
       i:LongInt;
    Begin
     Assign(F, 'input.txt');
     Reset(F);
     Readln(F, N);
     For i:=1 to N do Read(F, A[i]);
     Close(F);
    end;

  Procedure ProcessData;
   Var i, j:LongInt;

   Procedure Swap(Var A, B:LongInt);
    Var Tmp:LongInt;
     Begin
      Tmp:=A;
      A:=B;
      B:=Tmp;
     end;

   Begin
    For i:=1 to N do
     For j:=i + 1 to N do
      if A[i] > A[j] then Swap(A[i], A[j]);
    For i:=1 to N Div 2 do Ans:=Ans + A[N - i + 1] - A[i];
   end;

  Procedure OutputData;
   Var F:Text;
    Begin
     Assign(F, 'output.txt');
     ReWrite(F);
     Writeln(F, Ans);
     Close(F);
    end;

  Begin
   InputData;
   ProcessData;
   OutputData;
  end.
