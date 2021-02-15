const
     m:Int64=1;
var
     heap:array [0..400400] of Int64;
     a:array [0..100100] of Int64;
     i,V,j:Longint;
     answer:Extended;
     x,y,Z,N:Int64;
procedure swap(X,Y:Longint);
begin
     Z:=heap[X];
     heap[X]:=heap[Y];
     heap[Y]:=Z;
 end;

procedure HeapUp(X:Longint);
begin
     if X>1 then
     if heap[X shr m]>heap[X] then begin
                                        swap(x shr m,X);
                                        HeapUp(X shr m);
                                    end;
 end;

procedure HeapDown(X:Longint);
var
     mn,q:Longint;
begin
     mn:=X;
     q:=X shl m;
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
     Readln(N);
     V:=0;
     for i:=1 to N do
begin
     Read(a[i]);
     Inc(V);
     heap[V]:=a[i];
     HeapUp(V);
 end;
     answer:=0;
     while V>1 do
begin
     x:=heap[1];
     swap(1,V);
     Dec(V);
     HeapDown(1);
     y:=heap[1];
     swap(1,V);
     Dec(v);
     HeapDown(1);
     Inc(V);
     heap[V]:=x+y;
     HeapUp(V);
     answer:=answer+(x+y)*0.05;
 end;
     Writeln(answer:0:2);
     Close(Input);
     Close(Output);
 end.

