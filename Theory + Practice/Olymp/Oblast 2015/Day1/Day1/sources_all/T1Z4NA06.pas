//Куличок Никита, 10 класс, Березино
//Березинская гимназия
//Тур 1 Задача 4 "День Святого Байта"
const
     inf=1111111111;
type
     TList=^List;
     List=record
                V,R:Longint;
                Next:TList;
            end;
var
     X,Y,Heap,pos,z,mx,nom,met:array [1..111111] of Longint;
     d,rast:array [1..111111] of Int64;
     a,b:array [1..111111] of TList;
     mxx:Int64;
     N,M,L,XX,i:Longint;
     P:TList;
procedure In_List(V1,V2,V3:Longint);
var
     Q:TList;
begin
     New(Q);
     Q^.V:=V2;
     Q^.Next:=a[V1];
     Q^.R:=V3;
     a[V1]:=Q;
 end;

procedure In_List_2(V1,V2,V3:Longint);
var
     Q:TList;
begin
     New(Q);
     Q^.V:=V2;
     Q^.Next:=b[V1];
     Q^.R:=V3;
     b[V1]:=Q;
 end;

procedure DFS(X:Longint);
var
     P:TList;
begin
     P:=b[X];
     met[X]:=1;
     while P<>Nil do
begin
     if met[P^.v]=0 then begin
     DFS(P^.V);
     if rast[X]<rast[P^.V]+P^.R then rast[X]:=rast[P^.V]+P^.R;
     end;
     P:=P^.Next;
 end;
 end;

procedure Swap(X,Y:Longint);
var
     Z:Longint;
begin
     Z:=Heap[X];
     Heap[X]:=Heap[Y];
     Heap[Y]:=Z;
     pos[Heap[X]]:=X;
     pos[Heap[Y]]:=Y;
 end;

procedure HeapUp(X:Longint);
begin
     if X>1 then
     if d[Heap[X shr 1]]>d[Heap[X]] then begin
                                              Swap(X,X shr 1);
                                              HeapUp(X shr 1);
                                          end;
 end;

procedure HeapDown(X:Longint);
var
     min:Longint;
begin
     min:=X;
     if X shl 1<=L then
     if d[Heap[X shl 1]]<d[Heap[min]] then min:=X shl 1;
     if (X shl 1)+1<=L then
     if d[Heap[(X shl 1)+1]]<d[Heap[min]] then min:=(X shl 1)+1;
     if min<>X then begin
                         Swap(X,min);
                         HeapDown(min);
                     end;
 end;

begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(N);
     M:=N-1;
     for i:=1 to M do
begin
     Readln(X[i],Y[i],Z[i]);
     In_List_2(X[i],Y[i],Z[i]);
     In_List_2(Y[i],X[i],Z[i]);
 end;
     for i:=1 to N do
     if met[i]=0 then DFS(i);
     for i:=1 to M do
begin
      if (z[i]>mx[x[i]]) or
      ((z[i]=mx[x[i]]) and (rast[Y[i]]>rast[y[nom[X[i]]]]))then begin
                                mx[x[i]]:=z[i];
                                nom[x[i]]:=i;
                            end;
 end;
     for i:=1 to N do
begin
     if nom[i]<>0 then z[nom[i]]:=0;
     d[i]:=inf;
     Heap[i]:=i;
     pos[i]:=i;
 end;
     d[1]:=0;
     for i:=1 to M do
begin
     In_List(X[i],Y[i],Z[i]);
     In_List(Y[i],X[i],Z[i]);
 end;
     L:=N;
     for i:=1 to N do
begin
     XX:=Heap[1];
     P:=a[XX];
     while P<>Nil do
begin
     if d[XX]+P^.R<d[P^.V] then begin
                                    d[P^.V]:=d[XX]+P^.R;
                                    HeapUp(pos[P^.V]);
                                end;
     P:=P^.Next;
 end;
     Swap(1,L);
     Dec(L);
     HeapDown(1);
 end;
     mxx:=0;
     for i:=2 to N do
     if d[i]>mxx then mxx:=d[i];
     Writeln(mxx);
     Close(Input);
     Close(Output);
 end.
