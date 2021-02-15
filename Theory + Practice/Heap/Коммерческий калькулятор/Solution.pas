{$APPTYPE CONSOLE}
{$O+,L-,D-,I-,Q-,R-,H-}
  Const Coef=0.05;
        MaxN=100000;
  Type Int=LongInt;
       Real=Extended;
       THeap=Array [0..MaxN] Of Int;
  Var I,N,Sum : Int;
      Heap : THeap;
      Answer : Real;

Procedure Swap(Var A,B : Int);
  Var C : Int;
Begin
  C :=A;
  A :=B;
  B :=C;
End;

Procedure Heapify(Var Heap : THeap; Const I : Int);
Begin
  If I*2<=Heap[0] Then
    If (I*2+1<=Heap[0]) And (Heap[I*2+1]<Heap[I*2]) And (Heap[I*2+1]<Heap[I]) Then
      Begin
        Swap(Heap[I],Heap[I*2+1]);
        Heapify(Heap,I*2+1);
      End
    Else If Heap[I*2]<Heap[I] Then
      Begin
        Swap(Heap[I],Heap[I*2]);
        Heapify(Heap,I*2);
      End
End;

Procedure Add(Var Heap : THeap; Const X : Int);
  Var I : Int;
Begin
  Inc(Heap[0]);
  Heap[Heap[0]] :=X;
  I :=Heap[0];
  While (I>1) And (Heap[I]<Heap[I Div 2]) Do
    Begin
      Swap(Heap[I],Heap[I Div 2]);
      I :=I Div 2;
    End;
End;

Function ExtractMin(Var Heap : THeap) : Int;
Begin
  ExtractMin :=Heap[1];
  Swap(Heap[1],Heap[Heap[0]]);
  Dec(Heap[0]);
  Heapify(Heap,1);
End;

Procedure MakeHeap(Var Heap : THeap; Const N : Int);
  Var I : Int;
Begin
  Heap[0] :=N;
  For I :=N Div 2 DownTo 1 Do
     Heapify(Heap,I);
End;

Begin
  Assign(Input,'k.in');
  ReSet(Input);
  Assign(Output,'k.out');
  ReWrite(Output);
  Read(N);
  For I :=1 To N Do
    Read(Heap[I]);
  MakeHeap(Heap,N);
  Answer :=0;
  For I :=1 To N-1 Do
    Begin
      Sum :=ExtractMin(Heap)+ExtractMin(Heap);
      Add(Heap,Sum);
      Answer :=Answer+Sum*Coef;
    End;
  WriteLn(Answer:0:2);
  Close(Output);
  Close(Input);
End.
