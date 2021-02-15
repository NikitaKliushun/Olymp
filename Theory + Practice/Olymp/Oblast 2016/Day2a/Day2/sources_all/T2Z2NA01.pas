{Куличок Никита Сергеевич
 ГУО"Березинская гимназия"
 11 класс
 Тур 2 Задача 2}
var
     dp,pr,a,b,ans:array [0..3030] of Int64;
     N,M,i,j:Longint;
     X,P:Int64;
     F:Boolean;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(M,N);
     for i:=1 to M do
     Read(a[i]);
     for i:=1 to N do
     Read(b[i]);
     F:=False;
     dp[0]:=0;
     for i:=1 to N do
     for j:=0 to i-1 do
     if b[j]+a[dp[j]]<b[i]+a[dp[j]+1] then
     if dp[j]+1>dp[i] then begin
                                dp[i]:=dp[j]+1;
                                pr[i]:=j;
                                if dp[i]=M then begin
                                                     F:=True;
                                                     P:=i;
                                                 end;
                            end;
     if not F then Writeln('-1')
              else
begin
     X:=M;
     while P>0 do
begin
     ans[X]:=P;
     P:=pr[P];
     Dec(X);
 end;
     for i:=1 to M-1 do
     Write(ans[i],' ');
     Write(ans[M]);
 end;
     Close(Input);
     Close(Output);
 end.

