const
    diff = 0.5;
var
  days    : array [1..365] of longint;
  i,M,N,K : longint;
  Right, Left, Ans, Required  :  longint;

function Target(Middle:longint): longint;
var
  Karlsons, Sum : longint;
begin
    Karlsons:=Ans;
    Sum:=0;
    for i:=1 to 364 do
      begin
          Sum:=Sum + Days[i] - Karlsons*M;
          if Sum < 0 then Sum:=0;
          if Sum > Karlsons*N then break;
    end;
    Target:=Sum;
end;

procedure Dichotomy;
begin
    while (abs(Right-Left)>Diff) do
      begin
          if Right=Left+1 then
                             begin
                                 Ans:=Right;
                                 exit;
                             end
                          else Ans:=(Left+Right) div 2; 
          Required:=Ans * N;
          if Target(Ans) > Required then Left :=Ans
                                    else Right:=Ans;
      end;
    Required := Ans * N;
end;

procedure OutputData;
begin
    assign(output,'output.txt'); rewrite(output);
    writeln(Ans);
    close(output);
end;

procedure InputData;
var
  a,b,Max : longint;
begin
    assign(input,'input.txt'); reset(input);
    read(M,N);
    read(K);
    for i:=1 to 365 do days[i]:=0;
    for i:=1 to K do
      begin
          read(A,B);
          inc(days[A],B);
      end;
    max:=days[1];
    for i:=1 to 364 do
      if days[i]>Max then max:= days[i];
    Left:=0; // (Max div (M+N)) - 1 ;
    Ans := Left;
    Right := (Max div M) + 1;
end;

begin
    InputData;
    Dichotomy;
    OutputData;
end.