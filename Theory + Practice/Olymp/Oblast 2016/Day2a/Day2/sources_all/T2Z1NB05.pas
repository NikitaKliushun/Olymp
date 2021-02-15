var i:longint;
    D:array[1..111111] of int64;
    f,f1:text;
    m,w,first,b,t,ans,ostd,numd,lastost,lastnum:int64;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,m,w);
    for i:=1 to m do
      read(f,D[i]);
    readln(f,first,b,t);
    close(f);
    ans:=0;
    ostd:=t mod w;
    numd:=(ostd+first-1) mod w;
    if numd=0 then numd:=w;
    if (t<=D[1]) and (numd=b) then ans:=ans+1;
    lastost:=D[1] mod w;
    lastnum:=(lastost+first-1) mod w;
    if lastnum=0 then lastnum:=w;
    first:=(lastnum+1) mod w;
    if first=0 then first:=w;
    for i:=2 to m do
      begin
      numd:=(ostd+first-1) mod w;
      if numd=0 then numd:=w;
      if (t<=D[i]) and (numd=b) then ans:=ans+1;
      lastost:=D[i] mod w;
      lastnum:=(lastost+first-1) mod w;
      if lastnum=0 then lastnum:=w;
      first:=(lastnum+1) mod w;
      if first=0 then first:=w;
      end;
    assign(f1,'output.txt');
    rewrite(f1);
    write(f1,ans);
    close(f1);
    end.