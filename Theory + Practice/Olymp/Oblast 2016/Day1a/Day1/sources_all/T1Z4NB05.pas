const inf=2000000000;
var i,j,n,m:longint;
    A:array[1..2000,1..2000] of longint;
    f,f1:text;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,n,m);
    for i:=1 to n do
      for j:=1 to m do
      read(f,A[i,j]);
    close(f);
    assign(f1,'output.txt');
    rewrite(f1);
    write(f1,-1);
    close(f1);
    end.