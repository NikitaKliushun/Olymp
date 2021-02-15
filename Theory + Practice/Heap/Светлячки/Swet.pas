var
 n,e,i,M,x,k:longint;
 c:Int64;
 Heap,a: array[0..100111]of longint;

procedure Swap(x,y:longint);
var q:longint;
begin
 q:=Heap[x];
 Heap[x]:=Heap[y];
 Heap[y]:=q;
end;

procedure HeapDown(j:longint);
var min:longint;
begin
 min:=j;
 if j*2  <= M  then
 if Heap[j*2] < Heap[min] then min:=j*2;
 if j*2+1 <= M then
 if Heap[j*2+1] < Heap[min] then min:=j*2+1;
 if min <> j then
   begin
     Swap(min,j);
     HeapDown(min);
   end;
end;

procedure HeapUp(j:longint);
begin
 if j > 1 then
 if Heap[j div 2] > Heap[j] then
        begin
          Swap(j,j div 2);
          HeapUp(j div 2);
        end;
end;

begin
    assign(input,'input.txt');
    reset(input);
    assign(output,'output.txt');
    rewrite(output);
    read(n,e);
    k:=0;
    for i:=1 to n do
    begin
        Read(x);
        if x > e then begin
                          inc(k);
                          a[k]:=x;
                      end
                 else Inc(c,x);
    while c > e do
    begin
        inc(k);
        a[k]:=Heap[1];
        Dec(c,Heap[1]);
        Heap[1]:=Heap[M];
        Dec(M);
        HeapDown(1);
    end;
    Inc(M);
    Heap[M]:=x;
    HeapUp(M);
    end;
    writeln(c);
    write(a[1]);
    for i:=2 to k do
      write(' ',a[i]);
    close(input);
    close(output);
end.