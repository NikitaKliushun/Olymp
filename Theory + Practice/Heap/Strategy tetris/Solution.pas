{$R+,Q+,S+}
Type
  Integer=LongInt;

Const
  InFile='Input.txt';
  OutFile='Output.txt';
  MaxN=100002;

Type
  THeapItem=Record
    Free:Integer;
    Layer:Integer;
  End;
  TFigure=Record
    Left,Width:Integer;
    ID:Integer;
  End;

Var
  N,W,Height,NHeap:Integer;
  Figure:Array[1..MaxN]Of TFigure;
  Heap:Array[1..MaxN]Of THeapItem;
  First,Next:Array[1..MaxN]Of Integer;

Procedure Load;
Var
  I:Integer;
Begin
  Assign(Input,InFile);
  ReSet(Input);
  Read(N,W);
  For I:=1 To N Do With Figure[I] Do Begin
    Read(Left,Width);
    ID:=I;
  End;
  Close(Input);
End;

Procedure QSort(L,R:Integer);
Var
  I,J:Integer;
  X,Y:TFigure;
Begin
  I:=L;
  J:=R;
  X:=Figure[L+Random(R-L+1)];
  While I<=J Do Begin
    While Figure[I].Left<X.Left Do Inc(I);
    While X.Left<Figure[J].Left Do Dec(J);
    If I<=J Then Begin
      Y:=Figure[I];
      Figure[I]:=Figure[J];
      Figure[J]:=Y;
      Inc(I);
      Dec(J);
    End;
  End;
  If L<J Then QSort(L,J);
  If I<R Then QSort(I,R);
End;

Procedure Swap(Var A,B:THeapItem);
Var
  T:THeapItem;
Begin
  T:=A;
  A:=B;
  B:=T;
End;

Procedure SiftUp(A:Integer);
Begin
  While (A>1) And (Heap[A].Free<Heap[A Div 2].Free) Do Begin
    Swap(Heap[A],Heap[A Div 2]);
    A:=A Div 2;
  End;
End;

Procedure SiftDown(A:Integer);
Var
  I:Integer;
Begin
  While True Do Begin
    I:=A;
    If (2*A<=NHeap) And (Heap[2*A].Free<Heap[I].Free) Then I:=2*A;
    If (2*A+1<=NHeap) And (Heap[2*A+1].Free<Heap[I].Free) Then I:=2*A+1;
    If I=A Then Break;
    Swap(Heap[A],Heap[I]);
    A:=I;
  End;
End;

Procedure Solve;
Var
  I,Cur:Integer;
Begin
  QSort(1,N);
  NHeap:=0;
  Height:=0;
  FillChar(First,SizeOf(First),0);
  FillChar(Next,SizeOf(Next),0);
  For I:=1 To N Do With Figure[I] Do Begin
    If (NHeap=0) Or (Heap[1].Free>Left) Then Begin
      Inc(Height);
      Inc(NHeap);
      Heap[NHeap].Free:=Left+Width;
      Heap[NHeap].Layer:=Height;
      SiftUp(NHeap);
      Cur:=Height;
    End Else Begin
      Cur:=Heap[1].Layer;
      Heap[1].Free:=Left+Width;
      SiftDown(1);
    End;
    Next[I]:=First[Cur];
    First[Cur]:=I;
  End;
End;

Procedure Save;
Var
  F:Boolean;
  I,A:Integer;
Begin
  Assign(Output,OutFile);
  ReWrite(Output);
  WriteLn(Height);
  F:=True;
  For I:=1 To Height Do Begin
    A:=First[I];
    While A<>0 Do Begin
      If F Then F:=False Else Write(' ');
      Write(Figure[A].ID);
      A:=Next[A];
    End;
  End;
  WriteLn;
  Close(Output);
End;

Begin
  RandSeed:=548157143;
  Load;
  Solve;
  Save;
End.