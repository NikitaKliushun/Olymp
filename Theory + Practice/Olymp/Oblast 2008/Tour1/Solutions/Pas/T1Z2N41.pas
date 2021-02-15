{$N+}
program z2;
var n,k,i,s,x,z:integer;
    summ:longint;
    a:array[1..50] of longint;


begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);
      read(n,k);

       for i:=1 to n do
        begin
        read(a[i]);
        summ:=summ+a[i];
        end;
      if k>summ then begin write('0'); halt; end;

       if k=1 then write(n*n);


       i:=0;

  close(input);
  close(output);
end.
