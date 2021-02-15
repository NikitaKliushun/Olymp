{Куличок Никита Сергеевич
 ГУО"Березинская гимназия"
 11 класс
 Тур 2 Задача 3}
const
     inf=1000000000;
var
     a,b,pr,d,met:array [0..100100] of Longint;
     N,P,i,K,L,R,M,X,Y,sr,answer:Longint;
procedure sled;
begin
     if X=1 then Inc(P)
            else Dec(P);
 end;

begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(N,K);
     for i:=1 to N do
     Read(a[i]);
     answer:=0;
     for i:=1 to N do
begin
     b[i]:=Inf;
     pr[i]:=0;
     d[i]:=0;
 end;
     pr[0]:=0;
     for i:=1 to K do
begin
     X:=i mod 2;
     if X=1 then P:=1
            else P:=N;
     while True do
begin
     if (X=1) and (P>N) then Break;
     if (X=0) and (P<1) then Break;
     if met[P]=1 then begin
                           sled;
                           continue;
                       end;
     pr[P]:=0;
     M:=0;
     Y:=a[P];
     L:=0;
     R:=N+1;
     while R-L>1 do
begin
     sr:=(L+R) div 2;
     if b[sr]>=Y then R:=sr
                 else L:=sr;
 end;
     b[R]:=Y;
     if R>M then M:=R;
     pr[p]:=d[r-1];
     d[R]:=p;
     sled;
 end;
     answer:=answer+M;
     P:=d[M];
     while M>0 do
begin
     met[P]:=1;
     P:=pr[P];
     b[M]:=inf;
     d[M]:=0;
     Dec(M);
 end;
 end;
     Writeln(answer);
     Close(Input);
     Close(Output);
 end.