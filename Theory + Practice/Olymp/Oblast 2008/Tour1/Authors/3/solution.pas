{
  Time : O( K * Sqrt(N) )
  Memory : O( N )
  Solved by Sikorsky Alexey
}

Const Size = 512;

 Type PNode = ^TNode;
      TNode = Record
               V:LongInt;
               Next:PNode;
               Prev:PNode;
              end;

       List = Record
               First, Last:PNode;
               Size:LongInt;
              end;

 Var A:Array[1..Size] of List;
     Num:Array[1..Size*Size Div 2] of LongInt;
     N, M, X, i:LongInt;
     NotFirst:Boolean;

  Procedure Add(Var L:List; P:PNode);
   Begin
    P^.Next:=L.First;
    P^.Prev:=NIL;
    if L.Size = 0 then L.Last:=P else L.First^.Prev:=P;
    L.First:=P;
    Inc(L.Size);
   end;

  Procedure Remove(Var L:List; P:PNode);
   Begin
    if P^.Prev <> NIL then P^.Prev^.Next:=P^.Next;
    if P^.Next <> NIL then P^.Next^.Prev:=P^.Prev;
    if L.Last = P then L.Last:=P^.Prev;
    if L.First = P then L.First:=P^.Next;
    Dec(L.Size);
   end;

  Function GetNew(V:LongInt):PNode;
   Var P:PNode;
    Begin
     New(P);
     P^.V:=V;
     GetNew:=P;
    end;

  Procedure Adjust;
   Var i:LongInt;
       P:PNode;
    Begin
     For i:=1 to Size do
      if A[i].Size > Size then
       Begin
        P:=A[i].Last;
        Remove(A[i], P);
        Add(A[i + 1], P);
        Num[P^.V]:=i + 1;
       end else Break;
    end;

  Function Get(X:LongInt):LongInt;
   Var P:PNode;
       Ans:LongInt;
    Begin
     P:=A[Num[X]].First;
     Ans:=1;
     While (P^.V <> X) do
      Begin
       P:=P^.Next;
       Inc(Ans);
      end;
     Remove(A[Num[X]], P);
     Ans:=Ans + (Num[X] - 1)*Size;
     Num[X]:=1;
     Add(A[1], P);
     Adjust;
     Get:=Ans;
    end;

  Begin
   Assign(Input, 'input.txt');
   Reset(Input);
   Assign(Output, 'output.txt');
   ReWrite(Output);
   Readln(N, M);
   For i:=1 to N do Num[i]:=(i - 1) Div Size + 1;
   For i:=N downto 1 do Add(A[Num[i]], GetNew(i));
   For i:=1 to M do
    Begin
     Read(X);
     if NotFirst then Write(' ') else NotFirst:=True;
     Write(Get(X));
    end;
   Writeln;
   Close(Input);
   Close(Output);
  end.
