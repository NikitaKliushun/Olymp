{
  Time : O( N )
  Memory : O( N + |Z| )
  Solved by Sikorsky Alexey
}

Type PNode = ^TNode;
     TNode = Record
              Index:LongInt;
              Next:PNode;
             end;

      Queue = Record
               Size:LongInt;
               First, Last:PNode;
              end;

Var Q:Array[Char] of Queue;
    S:AnsiString;
    N, K:LongInt;
    Ans:Int64;

  Procedure InputData;
   Var F:Text;
    Begin
     Assign(F, 'input.txt');
     Reset(F);
     Readln(F, N, K);
     Readln(F, S);
     Close(F);
    end;

  Procedure ProcessData;
   Var i, j, Tmp:LongInt;

    Procedure AddToLast(Var Q:Queue; Index:LongInt);
     Var P:PNode;
      Begin
       New(P);
       P^.Index:=Index;
       P^.Next:=NIL;
       if Q.Size = 0 then
        Begin
         Q.First:=P;
         Q.Last:=P;
        end else
        Begin
         Q.Last^.Next:=P;
         Q.Last:=P;
        end;
       Inc(Q.Size);
      end;

    Function RemoveFirst(Var Q:Queue):LongInt;
     Var P:PNode;
         Ans:LongInt;

      Begin
       Ans:=Q.First^.Index + 1;
       if Q.Size = 1 then
        Begin
         Dispose(Q.First);
         Q.First:=NIL;
         Q.Last:=NIL;
        end else
        Begin
         P:=Q.First;
         Q.First:=Q.First^.Next;
         Dispose(P);
        end;
        Dec(Q.Size);
        RemoveFirst:=Ans;
      end;

    Begin
     j:=1;
     For i:=1 to N do
      Begin
       AddToLast(Q[S[i]], i);
       if (Q[S[i]].Size > K) then 
        Begin
         Tmp:=RemoveFirst(Q[S[i]]);
         if Tmp > j then j:=Tmp;
        end;
       Ans:=Ans + i - j + 1;
      end;

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
