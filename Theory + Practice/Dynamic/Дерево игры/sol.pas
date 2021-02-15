
{ Task. Дерево игры                }
{ Тема: DFS. Выигрышная стратегия. }
{ Сложность алгоритма O(V+E)       }
{ Решение : Чернушевич Игорь       }

type
   TList        =  ^List;
   List         =  record
                     v     : LongInt;
                     next  : TList;
                   end;
   Sost         =  record
                     a,b,c : LongInt
                   end;
var
   ans          :  array [1..1001] of Char;
   m            :  array [1..1001] of Sost;
   a            :  array [1..1001] of TList;
   N,i,x,j,cod  :  LongInt;
   S,ss         :  String;
   k            :  Char;

procedure In_List(T1,T2 : LongInt);
var
    Q : TList;
begin
    New(Q);
    Q^.v:=T2;
    Q^.next:=a[T1];
    a[T1]:=Q;
end;

{ pl - номер игрока, x - текущая вершина, y - предыдущая, z - результат игры }

procedure DFS(pl,x,y : LongInt; var z : Char);
var
  P   : TList;
  zz  : Char;
begin
    P:=a[x];
    while P <> Nil do
    begin
        DFS(pl+1,P^.v,x,zz);
        if zz = '+' then Inc(m[x].a)
                    else if zz = '-' then Inc(m[x].b)
                                     else Inc(m[x].c);

        P:=P^.next;
    end;
    if (m[x].a > 0) or (m[x].b > 0) or (m[x].c > 0) then
    if pl mod 2 = 1 then
                       if m[x].a > 0 then ans[x]:='+'
                                     else if m[x].c > 0 then ans[x]:='0'
                                                        else ans[x]:='-'
                  else if m[x].b > 0 then ans[x]:='-'
                                     else if m[x].c > 0 then ans[x]:='0'
                                                        else ans[x]:='+';
    z:=ans[x];
end;

begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    ReadLn(N);
    for i:=2 to N do
    begin
        ReadLn(S);
        ss:='';
        j:=3;
        while (j <= Length(S)) and (S[j] <> ' ') do
        begin
            ss:=ss + S[j];
            Inc(j);
        end;
        Val(ss,x,cod);
        In_List(x,i);
        if S[1] = 'L' then
                          begin
                              if S[j+1] = '+' then ans[i]:='+'
                                              else
                              if S[j+1] = '-' then ans[i]:='-'
                                              else ans[i]:='0';
                          end;
    end;
    DFS(1,1,0,k);
    if k ='0' then Write(k)
              else Write(k,1);
    Close(Input);
    Close(Output);
end.
