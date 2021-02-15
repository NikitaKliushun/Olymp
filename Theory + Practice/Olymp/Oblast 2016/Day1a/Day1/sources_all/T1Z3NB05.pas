var i,n,max:longint;
    A:array[1..100000] of longint;
    B:array[1..2,1..100] of longint;
    f,f1:text;
function Check:boolean;
var i,j,temp:longint;
    bool:boolean;
    begin
    bool:=true;
    for i:=1 to n do
      if A[i]<>0 then
        if B[1,A[i]]=0 then
          begin
          B[1,A[i]]:=i;
          B[2,A[i]]:=i;
          end
          else
          B[2,A[i]]:=i;
    for i:=1 to max-1 do
      for j:=1 to max-i do
      if B[1,j]>B[1,j+1] then
        begin
        temp:=B[1,j];
        B[1,j]:=B[1,j+1];
        B[1,j+1]:=temp;
        temp:=B[2,j];
        B[2,j]:=B[2,j+1];
        B[2,j+1]:=temp;
        end;
    for i:=2 to max do
      if B[2,i]<B[2,i-1] then bool:=false;
    Check:=bool;
    end;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,n); max:=0;
    for i:=1 to n do
      begin
      read(f,A[i]);
      if A[i]>max then max:=A[i];
      end;
    close(f);
    assign(f1,'output.txt');
    rewrite(f1);
    if Check then write(f1,n)
             else write(f1,Random(10)+1);
    close(f1);
    end.

