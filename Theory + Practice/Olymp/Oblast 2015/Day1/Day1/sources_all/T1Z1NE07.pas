//Лагун Алексей Юрьевич, Копыльский р-н, 9 класс, задача №1
var n,j,k,i,x,s,n1:longint;
    f,f1:text;
    A:array[1..100] of longint;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,n,k);
    for i:=1 to 100 do
      A[i]:=0;
    s:=0;
    n1:=0;
    for i:=1 to n do
      begin
      read(f,x);
      A[x]:=A[x]+1;
      if x>n1 then n1:=x;
      end;
    close(f);
    for i:=1 to n1 do
      begin
      s:=s+A[i] div k;
      A[i]:=A[i] div k;
      end;
    assign(f1,'output.txt');
    rewrite(f1);
    writeln(f1,s);
    for i:=1 to n1-1 do
      for j:=1 to A[i] do
      write(f1,i,' ');
    for j:=1 to A[n1]-1 do
      write(f1,n1,' ');
    if A[n1]>0 then write(f1,n1);
    close(f1);
    end.