const
     qm:Int64=1;
var
     heap,answer:array [0..400400] of Int64;
     i,V:Longint;
     X,S,cnt,N,M,Z:Int64;
procedure swap(X,Y:Longint);
begin
     Z:=heap[X];
     heap[X]:=heap[Y];
     heap[Y]:=Z;
 end;

procedure HeapUp(X:Longint);
begin
     if X>1 then
     if heap[X shr qm]>heap[X] then begin
                                         swap(x shr qm,X);
                                         HeapUp(X shr qm);
                                     end;
 end;

procedure HeapDown(X:Longint);
var
     mn,q:Longint;
begin
     mn:=X;
     q:=X shl qm;
     if Q<=V then
     if heap[q]<heap[mn] then mn:=q;
     if q+1<=V then
     if heap[q+1]<heap[mn] then mn:=q+1;
     if mn<>X then begin
                        swap(X,mn);
                        HeapDown(mn);
                    end;
 end;



begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(N,M);
     s:=0;
     V:=0;
     for i:=1 to N do
begin
     Read(X);
     if S+X<=M then begin
                         S:=S+X;
                         Inc(V);
                         Heap[V]:=X;
                         HeapUp(V);
                     end
               else begin
                         if X>M then begin
                                          Inc(cnt);
                                          answer[cnt]:=X;
                                          continue;
                                      end;
                         while S+X>M do
                    begin
                         S:=S-heap[1];
                         Inc(cnt);
                         answer[cnt]:=heap[1];
                         swap(1,V);
                         Dec(V);
                         HeapDown(1);
                     end;
                         s:=S+X;
                         Inc(V);
                         heap[V]:=X;
                         HeapUp(V);
                     end;
 end;
     Writeln(S);
     for i:=1 to cnt-1 do
     Write(answer[i],' ');
     Writeln(answer[cnt]);
     Close(Input);
     Close(Output);
 end.

