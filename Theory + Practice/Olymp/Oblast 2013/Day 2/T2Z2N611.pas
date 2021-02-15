program zzz;

type int = longint;
     elem = record n:int; a:int; end;

var a:array[1..200000] of elem;
    n,k:int; m:int; i,j:int; min:int; mn:elem;
    now:int;

    procedure qsort(l,r:int);
        var i,j:int; m:int; cc:elem;
    begin
        i:=l;
        j:=r;
        m:=a[(l+r) div 2].a;

        repeat
             while a[i].a<m do inc(i);
             while a[j].a>m do dec(j);

             if i<=j then
                begin
                    cc:=a[i];
                    a[i]:=a[j];
                    a[j]:=cc;
                    inc(i);
                    dec(j);
                end;
        until i>j;

        if i<r then qsort(i,r);
        if j>l then qsort(l,j);
    end;

begin
    assign(input,'input.txt');
    assign(output,'output.txt');
    reset(input);
    rewrite(output);
      readln(n,k);
      for i:=1 to n do
        read(a[i].a);

      for i:=1 to n do
         a[i].n:=i;

      qsort(1,n);

      i:=1;
      j:=k;
      min:=maxlongint;
      while j<=n do
        begin
             now:=a[j].a-a[i].a;
             if min>now then
                begin
                    min:=now;
                    mn.a:=i;
                    mn.n:=j;
                end;
             inc(i);
             inc(j);
        end;

     writeln(mn.n - mn.a + 1);
     for i:=mn.a to mn.n do
        write(a[i].n,' ');

    close(input);
    close(output);
end.