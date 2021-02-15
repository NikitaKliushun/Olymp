var A:array[1..10,1..10] of char;
    B:array[1..10,1..10] of longint;
    C,D:array[1..10,1..10] of boolean;
    i,j,n,x,y,m,i1,j1:longint;
    ch:char;
    go:boolean;
    f,f1:text;
function Check(x,y:longint):boolean;
var bool:boolean;
    begin
    bool:=false;
    if (x>0) and (x<11) and (y>0) and (y<11) then bool:=true
                                             else bool:=false;
    Check:=bool;
    end;
function Empty(x,y:longint):boolean;
var bool:boolean;
    begin
    bool:=true;
    if (x>0) and (x<11) and (y>0) and (y<11) then
      if B[x,y]=1 then bool:=false;
    Empty:=bool;
    end;
function Search(l,r:longint):boolean;
var bool:boolean;
    begin
    bool:=false; D[l,r]:=true;
      if (l>0) and (l<11) and (r>0) and (r<11) and C[l,r] then   
      begin
      if not ((l=x) and (r=y)) then
          if B[l,r]=1 then
            bool:=true;
      if not bool then
        begin
        if Check(l,r-1) and not D[l,r-1] and Search(l,r-1) then bool:=true;
        if Check(l,r+1) and not D[l,r+1] and Search(l,r+1) then bool:=true;
        if Check(l-1,r) and not D[l-1,r] and Search(l-1,r) then bool:=true;
        if Check(l+1,r) and not D[l+1,r] and Search(l+1,r) then bool:=true;
        end;
      end;
    Search:=bool;  
    end;  
    begin
    assign(f,'input.txt');
    reset(f);
    assign(f1,'output.txt');
    rewrite(f1);
    for i:=1 to 10 do
      for j:=1 to 10 do
        begin
        B[i,j]:=0;
        C[i,j]:=false;
        end;
    go:=false; m:=0;   
    for i:=1 to 10 do
      begin
      for j:=1 to 10 do
        begin
        read(f,A[i,j]);
        if A[i,j]='#' then
          begin
          B[i,j]:=1;
          C[i,j]:=true;
          m:=m+1;
          end;
        end;
      readln(f);
      end;  
    readln(f,n);
    for i:=1 to n do
      begin
      read(f,x,ch);
      readln(f,ch);
      if ch<>'k' then y:=ord(ch)-ord('a')+1
                 else y:=10;
      if not go then
        begin
        if B[x,y]=0 then writeln(f1,'MISS')
          else
          if B[x,y]=1 then
            begin
            if Empty(x,y-1) and Empty(x,y+1) and Empty(x+1,y) and Empty(x-1,y) then
              begin
              B[x,y]:=0;
              m:=m-1;
              if m=0 then
                begin
                writeln(f1,'GAME OVER');
                go:=true;
                end
                else
                begin
                for i1:=1 to 10 do
                  for j1:=1 to 10 do
                  D[i1,j1]:=false;
                if Search(x,y) then writeln(f1,'HIT')
                               else writeln(f1,'DEAD');
                end;               
              end
              else
              begin
              B[x,y]:=0;
              m:=m-1;
              writeln(f1,'HIT');
              end;
            end;
        end;
      end;
      close(f); close(f1);
      end.