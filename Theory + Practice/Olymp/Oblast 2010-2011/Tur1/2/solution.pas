{
   Solved by Sikorsky Alexey
   Time : O( N )
   Memory : O( N )
}

Var 
 A:Array of LongInt;
 N, Ans, i:LongInt;

 Procedure InputData;
  Var F:Text;
   Begin
    Assign(F, 'input.txt');
    Reset(F);
    Readln(F, N);
    SetLength(A, N + 1);
    For i:=1 to N do Read(F, A[i]);
    Close(F);
   end;

 Procedure ProcessData;
  Var i, K:LongInt;
   Begin
    K:=1;
    For i:=2 to N do
     if A[i] <> A[i - 1] then Inc(K);
    Ans:= K Div 2;
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
