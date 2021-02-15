{
   Solved by Sikorsky Alexey
   Time : O( N^0.75 )
   Memory : O( Sqrt(N) )
}

Type TArray  = Array of LongInt;

Var
 N:LongInt;
 Ans:Int64;

 Procedure InputData;
  Var F:Text;
   Begin
    Assign(F, 'input.txt');
    Reset(F);
    Readln(F, N);
    Close(F);
   end;

 Procedure ProcessData;
  Var i:LongInt;

   Function Calc(P1, N:LongInt):LongInt;
    Var A:TArray;

    Function Factor(N:LongInt):TArray;
     Var i:LongInt;
         R:TArray;

      Begin
       SetLength(R, 0);
       i:=2;
       While (N <> 1)And(i*i <= N) do
        Begin
         if N Mod i = 0 then
          Begin
           SetLength(R, Length(R) + 1);
           R[Length(R) - 1]:=i;
           While N Mod i = 0 do N:=N Div i;
          end;
         Inc(i);
        end;
       if N <> 1 then
        Begin
         SetLength(R, Length(R) + 1);
         R[Length(R) - 1]:=N;
        end;
       Factor:=R;
      end;

    Function Count(S, F, N:LongInt):LongInt;
     Begin
      if S > F then Count:=0 else Count:=F Div N - (S - 1) Div N;
     end;

    Function Force(Var A:Tarray;S, F, N, D, K:LongInt):LongInt;
      Begin
       if K = Length(A) then
        Begin
         if Odd(D) then Force:=-Count(S, F, N) else Force:=Count(S, F, N);
        end else
        Begin
         Force:=Force(A, S, F, N * A[K], D + 1, K + 1) +
                Force(A, S, F, N, D, K + 1);
        end;
     end;

    Begin
     A:=Factor(P1);
     Calc:=Force(A, P1 + 1, N Div P1, 1, 0, 0);
    end;

   Begin
    Ans:=0;
    For i:=2 to N do
     if i * i >= N then Break else Ans:=Ans + Calc(i, N);
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
