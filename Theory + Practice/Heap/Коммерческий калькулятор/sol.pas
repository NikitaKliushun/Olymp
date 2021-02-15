uses math;
var
 Heap: array[0..101101]of longint;
 M,n,i,x,c,l:longint;
 ans:Extended;


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
 assign(INPUT,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 read(n);
 ans:=0;
 for i:=1 to n do
  begin
    read(x);
    inc(M);
    Heap[M]:=x;
    HeapUp(M);
  end;
 while M > 1 do
  begin
    c:=0;
    if M > 2 then begin
    if Heap[2] < Heap[3] then l:=2 else l:=3;end
    else l:=2;
    c:=Heap[1]+Heap[l];
    ans:=ans+c * 0.05;
    Heap[l]:=Heap[M];
    HeapDown(l);
    Dec(M);
    Heap[1]:=Heap[M];
    HeapDown(1);
    Heap[M]:=c;
    HeapUp(M);
  end;
 Writeln(ans:0:2);
 close(input);
 close(output);
end.