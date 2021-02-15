var f,f1:text;
    d,d1,sum,k:int64;
    i:longint;
    A:array of int64;
    begin
    assign(f,'input.txt');
    reset(f);
    read(f,d);
    close(f);
    Setlength(A,2);
    k:=1;
    d1:=d;
    A[1]:=1;
    sum:=7;
    i:=1;
    assign(f1,'output.txt');
    rewrite(f1);
    while i<=d do
      begin
      if A[i]<d then
        begin
        SetLength(A,i+2);
        inc(i);
        A[i]:=A[i-1]+sum;
        sum:=sum+i*6;
        end;
      if d=A[i] then
        begin
        write(f1,k);
        break;
        end;
      if d<A[i] then
        begin
        inc(k);
        d:=d+d1;
        end;
      end;
    close(f1);  
    end.