program zzz;

type int = longint;

var a:array[1..1000] of int;
    b:array[1..1000] of int;
    n,m:int; i,k:int; ans:int; j:int;
    sum:int;

begin
    assign(input,'input.txt');
    assign(output,'output.txt');
    reset(input);
    rewrite(output);
      readln(n,k);

      for i:=1 to n do
        readln(a[i],b[i]);

      for i:=1 to n do
        sum:=sum+a[i];

      if sum = k then writeln(0)
      else if sum<k then
       begin
            writeln(k-sum);
             repeat
                i:=1;
                 while a[i] = b[i] do
                     inc(i);
                 inc(a[i]);
                 inc(sum);
                 writeln(i);
             until sum = k;
       end
      else begin
           writeln(sum-k);
             repeat
                i:=1;
                 while a[i] = 0 do
                     inc(i);
                 dec(a[i]);
                 dec(sum);
                 writeln(-i);
             until sum = k;
      end;

    close(input);
    close(output);
end.