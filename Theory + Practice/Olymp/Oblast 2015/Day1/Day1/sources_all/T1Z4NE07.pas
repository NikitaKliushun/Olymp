var i,j,n,x,y,z,sum,max:longint;
    f,f1:text;
    A:array[1..2000,1..2000] of integer;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,n);
    for i:=1 to n-1 do
      begin
      readln(f,x,y,z);
      A[x,y]:=z;
      end;
    A[x,y]:=z;
    close(f);
    sum:=0;
    for i:=1 to n do
      for j:=1 to n do
      sum:=sum+A[i,j];
    for i:=1 to n do
      begin
      for j:=1 to n do
        begin
        max:=0;
        if A[i,j]>max then
        max:=A[i,j];
        end;
      sum:=sum-max;
      end;
    assign(f1,'output.txt');
    rewrite(f1);
    write(f1,sum);
    close(f1);
    end.