Program z1;
Var
i,k,n,res,j:longint;
count:array[1..101] of longint;
a:array[1..100010] of byte;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
    readln(n,k);
    res:=0;

    for i:=1 to n do read(a[i]);

    for i:=1 to n do
      inc(count[a[i]]);

    for i:=1 to 101 do begin
      count[i]:=count[i] div k;
      inc(res,count[i]);
    end;

    writeln(res);

    for i:=1 to 101 do
      for j:=1 to count[i] do write(i,' ');

  close(input); close(output);
End.