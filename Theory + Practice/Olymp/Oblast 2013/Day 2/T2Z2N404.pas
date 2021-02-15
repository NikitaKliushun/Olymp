var
     a,b:array [1..100500] of Longint;
     u,i,j,N,M,Q,Nom,min,R:Longint;
procedure Q_Sort(L,R:Longint);
var
     ii,jj,X,Y,Z:Longint;
begin
     ii:=L;
     jj:=R;
     X:=a[L+Random(R-L)];
repeat
      while a[ii]<X do
      Inc(ii);
      while X<a[jj] do
      Dec(jj);
      if ii<=jj then begin
                        Y:=a[ii];
                        a[ii]:=a[jj];
                        a[jj]:=Y;
                        Z:=b[ii];
                        b[ii]:=b[jj];
                        b[jj]:=Z;
                        Inc(ii);
                        Dec(jj);
                    end;
until ii>jj;
      if L<jj then Q_Sort(L,jj);
      if ii<R then Q_Sort(ii,R);
 end;
begin
     Assign(Input,'input.txt');
     Reset(Input);
     Assign(Output,'output.txt');
     ReWrite(Output);
     Readln(N,M);
     for u:=1 to N do
begin
     Read(a[u]);
     b[u]:=u;
 end;
     min:=MaxLongint;
     Q_Sort(1,N);
     Q:=M-1;
     for i:=1 to N-Q do
begin
     R:=a[i+Q]-a[i];
     if R<min then begin
                        min:=R;
                        Nom:=i;
                    end;
 end;
     Writeln(M);
     for i:=Nom to Nom+Q do
     Write(b[i],' ');
     Close(Input);
     Close(Output);
 end.



