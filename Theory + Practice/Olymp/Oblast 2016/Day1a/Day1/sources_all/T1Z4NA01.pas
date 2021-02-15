{Куличок Никита Сергеевич
 ГУО"Березинская гимназия"
 11 класс
 Тур 1 Задача 4}
uses math;
const
     inf=1000000000;
var
     a,b,c,nx:array [0..4000400] of Longint;
     ll,rr:array [0..2020] of Longint;
     N,M,K,i,j,X,L,R,sr,p,answer,ans,anss,pr:Longint;
procedure Q_Sort(L,R:Longint);
var
     ii,jj,X,Y,Z,P,Q:Longint;
begin
     ii:=L;
     jj:=R;
     P:=Random(R-L+1)+L;
     X:=a[P];
     Y:=b[P];
     Z:=c[P];
repeat
     while (a[ii]<X) or ((a[ii]=X) and (b[ii]<Y))
     or ((a[ii]=X) and (b[ii]=Y) and (c[ii]<Z)) do
     Inc(ii);
     while (a[jj]>X) or ((a[jj]=X) and (b[jj]>Y))
     or ((a[jj]=X) and (b[jj]=Y) and (c[jj]>Z)) do
     Dec(jj);
     if ii<=jj then begin
                         Q:=a[ii];
                         a[ii]:=a[jj];
                         a[jj]:=Q;
                         Q:=b[ii];
                         b[ii]:=b[jj];
                         b[jj]:=Q;
                         Q:=c[ii];
                         c[ii]:=c[jj];
                         c[jj]:=Q;
                         Inc(ii);
                         Dec(jj);
                     end;
until ii>jj;
     if L<jj then Q_Sort(L,jj);
     if ii<R then Q_Sort(ii,R);
 end;

begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     Readln(N,K);
     M:=0;
     for i:=1 to N do
     for j:=1 to K do
begin
     Read(X);
     Inc(M);
     a[M]:=X;
     b[M]:=i;
     c[M]:=j;
     nx[M]:=0;
     ll[j]:=0;
     rr[j]:=0;
 end;
     Q_Sort(1,M);
     p:=1;
     for i:=2 to M do
     if (a[i-1]<>a[i]) or (b[i-1]<>b[i]) then begin
                                                   nx[p]:=i;
                                                   p:=i;
                                               end;
     nx[p]:=M+1;
     for j:=1 to K do
begin
     L:=0;
     R:=M+1;
     while R-L>1 do
begin
     sr:=(L+R) div 2;
     if a[sr]>=j then R:=sr
                 else L:=sr;
 end;
     ll[j]:=R;
     L:=0;
     R:=M+1;
     while R-L>1 do
begin
     sr:=(L+R) div 2;
     if a[sr]>j then R:=sr
                else L:=sr;
 end;
     rr[j]:=L;
 end;
     answer:=inf;
     for i:=1 to K do
begin
     for j:=1 to K do
     if (ll[j]=0) and (rr[j]=0) then continue
                                else
begin
     p:=ll[j];
     ans:=0;
     pr:=0;
     while P<=rr[j] do
begin
     L:=p-1;
     r:=nx[p]-1;
     Inc(pr);
     while R-L>1 do
begin
     sr:=(L+R) div 2;
     if c[sr]>=i then R:=sr
                 else L:=sr;
 end;
     anss:=inf;
     anss:=min(anss,abs(c[R]-i));
     if L>=p then anss:=min(anss,abs(c[L]-i));
     if c[R]>=i then anss:=min(anss,K-c[nx[p]-1]+i)
                else anss:=min(anss,K-i+c[ll[j]]);
     ans:=ans+anss;
     P:=nx[p];
 end;
     if pr<>N then ans:=inf;
     answer:=min(answer,ans);
     if answer=0 then Break;
 end;
     if answer=0 then Break;
 end;
     if answer=inf then Writeln('-1')
                   else Writeln(answer);
     Close(Input);
     Close(Output);
 end.
