{
  Time : O( K * N^2 )
  Memory : O( K * N )
  Solved by Sikorsky Alexey
}

Const MaxN = 50;
      MaxK = 10000;

 Var D:Array[0..1, 0..MaxN*MaxK] of Int64;
     A:Array[1..MaxN] of LongInt;
     N, K:LongInt;
     Ans:Int64;

  Procedure InputData;
   Var F:Text;
       i:LongInt;
    Begin
     Assign(F, 'input.txt');
     Reset(F);
     Readln(F, N, K);
     For i:=1 to N do Read(F, A[i]);
     Close(F);
    end;

  Procedure ProcessData;
   Var L, i, j, S:LongInt;
    Begin
     For i:=1 to N do
      if A[i] > K then A[i]:=K;
     S:=0;
     For i:=1 to N do S:=S + A[i];
     For i:=0 to N*K do D[0, i]:=0;
     For i:=0 to N*K do D[0, i]:=0;
     D[0, 0]:=1;
     L:=0;
     For i:=1 to N do
      Begin
       For j:=0 to N*K do
        if D[L, j] > 0 then
         Begin
          D[1 - L, j]:=D[1 - L, j] + D[L, j];
          D[1 - L, j + A[i]]:=D[1 - L, j + A[i]] + D[L, j];
         end;
       L:=1 - L;
       For j:=0 to N*K do D[1 - L, j]:=0;
      end;
     For i:=K to N*K do
      if (S - i >= K) then Ans:=Ans + D[L, i]; 
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