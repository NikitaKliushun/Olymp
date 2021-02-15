var
 N,K,i,Ans,G:longint;
 a,ind:array [1..1000000] of longint;

Procedure QSort(L,R:longint);
var
 ii,jj,Q,sr,x:longint;
begin
 ii:=L;
 jj:=R;
 sr:=(L+R)div 2;
 x:=a[sr];
  repeat
    While a[ii]<x do Inc(ii);
    While a[jj]>x do Dec(jj);
      if ii<=jj then begin
                     Q:=a[ii];
                     a[ii]:=a[jj];
                     a[jj]:=Q;

                     Q:=ind[ii];
                     ind[ii]:=ind[jj];
                     ind[jj]:=Q;

                     Inc(ii);
                     Dec(jj);
                    end;
  until ii>jj;
 if ii<R then QSort(ii,R);
 if jj>L then QSort(L,jj);
end;

begin
Ans:=MaxLongint div 2;
 Assign(input,'input.txt');
 Reset(input);
 Assign(output,'output.txt');
 Rewrite(output);
  Read(N,K);
   For i:=1 to N do begin
                     Read(a[i]);
                     ind[i]:=i;
                    end;
  QSort(1,N);
 For i:=1 to N-K+1 do begin
              if a[i+K-1]-a[i]<Ans then begin
                              Ans:=a[i+K-1]-a[i];
                              G:=i;
                                        end;
                      end;
 Writeln(K);
 For i:=G to G+K-1 do Write(ind[i],' ');
end.
