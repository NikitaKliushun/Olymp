label 1;
var c,y,i,j,k:longint;
    f,f1:text;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,c,y);
    close(f);
    assign(f1,'output.txt');
    rewrite(f1);
    if c=3 then
    for i:=0 to 1100 do
      for j:=0 to 1100 do
        for k:=0 to 1100 do
        if (i<>j) and (j<>k) and (i<>k) and (i and j and k=y) then
          begin
          write(f1,i,' ',j,' ',k);
          goto 1;
          end;
    if c=2 then
    for i:=0 to 1100 do
      for j:=0 to 1100 do
      if (i<>j) and (i and j=y) then
        begin
        write(f1,i,' ',j);
        goto 1;
        end;
    if c=1 then write(f1,y);
    1:
    close(f1);
    end.  