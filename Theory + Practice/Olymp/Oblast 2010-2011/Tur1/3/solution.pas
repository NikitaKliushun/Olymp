{
   Solved by Sikorsky Alexey
   Time : O( N )
   Memory : O( N )
}

Type PList = ^TList;
     TList = Record
              V, C:LongInt;
              Next:PList;
             end;

     TListArray = Array of PList;
     TBoolArray = Array of Boolean;

Var 
 A:TListArray;
 B:TBoolArray;
 N, Ans:LongInt;

 Procedure InputData;
  Var F:Text;
      X, Y, Z, i:LongInt;

   Procedure AddEdge(X, Y, Z:LongInt);
    Var P:Plist;
     Begin
      New(P);
      P^.V:=Y;
      P^.C:=Z;
      P^.Next:=A[X];
      A[X]:=P;
     end;

   Begin
    Assign(F, 'input.txt');
    Reset(F);
    Readln(F, N);
    SetLength(A, N + 1);
    For i:=1 to N - 1 do 
     Begin
      Read(F, X, Y, Z);
      AddEdge(X, Y, Z);
      AddEdge(Y, X, Z);
     end;
    Close(F);
   end;

 Procedure ProcessData;
  Var i:LongInt;

   Function Force(V, C:LongInt):LongInt;
    Var P:PList;
        Ans1, Ans2, K:LongInt;
     Begin
      B[V]:=True;
      P:=A[V];
      Ans1:=0;
      Ans2:=0;
      While P <> NIL do
       Begin
        if Not B[P^.V] then
         Begin
          K:=Force(P^.V, C + P^.C) + P^.C;
          if K > Ans1 then
           Begin
            Ans2:=Ans1;
            Ans1:=K;
           end else
          if K > Ans2 then Ans2:=K;
         end;
        P:=P^.Next;
       end;
      Force:=Ans1;
      if C > Ans1 then K:=C + Ans1 else
      if C > Ans2 then K:=Ans1 + C else K:=Ans1 + Ans2;
      if K > Ans then Ans:=K;
     end;

   Begin
    SetLength(B, N + 1);
    For i:=1 to N do B[i]:=False;
    Force(1, 0);
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
