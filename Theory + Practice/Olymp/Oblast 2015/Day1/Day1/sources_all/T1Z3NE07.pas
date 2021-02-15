var f,f1:text;
    i,n,m,j,x,pe,pe1,num,k:longint;
    c:boolean;
    A,B:array[1..10000000] of byte;
    begin
    assign(f,'input.txt');
    reset(f);
    readln(f,n,m);
    pe:=1;
    num:=1;
    for i:=1 to n do
      begin
      read(f,x);
      for j:=pe to pe+x-1 do
        A[j]:=num;
      if num=1 then num:=0
               else num:=1;
      pe:=pe+x;         
      end;
    pe1:=1;
    num:=1;
    for i:=1 to m do
      begin
      read(f,x);
      for j:=pe1 to pe1+x-1 do
        B[j]:=num;
      if num=1 then num:=0
               else num:=1;
      pe1:=pe1+x;         
      end;
    close(f);  
    dec(pe);
    dec(pe1);
    if pe>pe1 then
      begin
      for i:=pe1 downto 1 do
        begin
        B[i+pe-pe1]:=B[i];
        B[i]:=0;
        end;
      pe1:=pe;
      end;
    if pe<pe1 then
      begin
      for i:=pe downto 1 do
        begin
        A[i+pe1-pe]:=A[i];
        A[i]:=0;
        end; 
      pe:=pe1;
      end;
    num:=1;
    k:=0;
    c:=false;
    assign(f1,'output.txt');
    rewrite(f1);
    for i:=1 to pe do
      begin
      if ((A[i]=1) and (B[i]=0)) or ((A[i]=0) and (B[i]=1)) then
        B[i]:=1
      else
        B[i]:=0;
      if B[i]=num then
        begin
        inc(k);
        c:=true;
        if i=pe then
          begin
          write(f1,k,' ');
          k:=0;
          end;
        end;  
      if (B[i]<>num) and (c=true) then
        begin
        write(f1,k,' ');
        k:=0;
        if num=0 then num:=1
                 else num:=0;
        inc(k);
        if i=pe then
          begin
          write(f1,k,' ');
          k:=0;
          end;
        end;  
      end;
    close(f1);  
    end.  