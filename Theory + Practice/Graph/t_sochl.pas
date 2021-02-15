Uses
   math;
type
   TList         =  ^List;
   List          =  record
                       v    : LongInt;
                       next : TList;
                    end;
var
   a             :  array [1..20000] of TList;
   Time,Up,ans,c :  array [1..20000] of LongInt;
   N,M,i,x,y,j,k :  LongInt;

procedure In_List(T1,T2 : LongInt);
var
  Q : TList;
begin
    New(Q);
    Q^.v:=T2;
    Q^.next:=A[T1];
    a[T1]:=Q;
end;

procedure Dfs(x,prev : LongInt);
var
    P : TList;
    y : LongInt;
begin
    Inc(j);
    Time[x]:=j;
    Up[x]:=N+1;
    P:=a[x];
    while P <> Nil do
    begin
        y:=P^.v;
        if y <> prev then
           if Time[y] = 0 then
                 begin
                     Inc(c[x]);
                     Dfs(y,x);
                     Up[x]:=Min(Up[x],Up[y]);
                     if Up[y] >= Time[x] then ans[x]:=1;
                 end
                          else Up[x]:=Min(Up[x],Time[y]);
        P:=P^.next;
    end;
end;

begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Read(N,M);
    for i:=1 to M do
    begin
        Read(x,y);
        In_List(x,y);
        In_List(y,x);
    end;

    for i:=1 to N do
      if Time[i] = 0 then
                begin
                    DFS(i,0);
                    if c[i] < 2 then ans[i]:=0;
                end;

    for i:=1 to N do
      if ans[i] = 1 then begin
                             Write(i,' ');
                             Inc(k);
                         end;
    WriteLn;
    WriteLn('Kol = ',k);
    Close(Input);
    Close(Output);
end.
