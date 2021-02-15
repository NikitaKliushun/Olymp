label 1;
var i,j,k,m,n:longint;
    f,f1:text;
    H,B:array[1..100] of longint;
    bool:boolean;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,m,n);
    for i:=1 to m do
      read(f,H[i]);
    for j:=1 to n do
      read(f,B[j]);
    close(f);  
    bool:=false;  
    assign(f1,'output.txt');
    rewrite(f1);
    if m=3 then
      for i:=1 to n do
        for j:=i+1 to n do
          for k:=j+1 to n do
          if (H[1]+B[i]<H[2]+B[j]) and (H[2]+B[j]<H[3]+B[k]) then
            begin
            write(f1,i,' ',j,' ',k);
            bool:=true;
            goto 1;
            end;
    if m=2 then
      for i:=1 to n do
        for j:=i+1 to n do
          if H[1]+B[i]<H[2]+B[j] then
            begin
            write(f1,i,' ',j);
            bool:=true;
            goto 1;
            end;
    1:
    if not bool then write(f1,-1);
    close(f1);
    end.