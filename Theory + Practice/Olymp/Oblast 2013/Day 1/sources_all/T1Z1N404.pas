{Куличок Никита Сергеевич, 8 класс
г.Березино, Березинский район
Первый тур, Задача 1 "Электронный журнал"}
var
    u,N,M,k,Y1,Y2,Y3,cod:Longint;
    a,c,d:array [1..2001] of Longint;
    b:array [1..2001] of String[30];
    S,X1,X2,X3:String[30];
procedure Q_Sort(L,R:Longint);
var
     i,j,X,Y,Z:Longint;
begin
     i:=L;
     j:=R;
     X:=a[L+Random(R-L)];
repeat
      while a[i]<X do
      Inc(i);
      while a[j]>X do
      Dec(j);
      if i<=j then begin
                        Y:=a[i];
                        a[i]:=a[j];
                        a[j]:=Y;
                        Z:=d[i];
                        d[i]:=d[j];
                        d[j]:=Z;
                        Inc(i);
                        Dec(j);
                    end;
until i>j;
     if L<j then Q_Sort(L,j);
     if i<R then Q_Sort(i,R);
 end;
begin
     Assign(Input,'input.txt');
     Reset(Input);
     Assign(Output,'output.txt');
     ReWrite(Output);
     Readln(N,M);
     N:=2*N;
     for u:=1 to N do
begin
     Readln(S);
     X1:=Copy(S,1,2);
     X2:=Copy(S,4,2);
     X3:=Copy(S,7,2);
     Val(X1,Y1,cod);
     Val(X2,Y2,cod);
     Val(X3,Y3,cod);
     a[u]:=Y1*3600+Y2*60+Y3;
     b[u]:=S;
     d[u]:=u;
 end;
     Q_Sort(1,N);
     for u:=1 to N-1 do
     for k:=u+1 to N do
     if c[u]=0 then
     if (c[k]=0) and (a[k]-a[u]=M) then begin
                                             Writeln(b[d[u]],'-',b[d[k]]);
                                             c[u]:=1;
                                             c[k]:=1;
                                         end;
     Close(Input);
     Close(Output);
 end.

