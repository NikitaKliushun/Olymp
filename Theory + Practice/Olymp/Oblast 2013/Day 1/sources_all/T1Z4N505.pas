//@utor Gamezo Vladislav, 10 Klass, Berezino
// Task 4, Tur 1


var
 i,x,N,M,K,Fin:longint;
 c,mon:array [0..1000000] of longint;
 a:array [0..1000,0..1000] of longint;

Procedure DFS(P,R:longint; f:Boolean);
var
 KK:array [0..1000000] of longint;
 Kol,ii:longint;

begin
Inc(Kol);
 if (f=true)and
    (R<>0) then begin
    if KK[R]<K then begin
                 Inc(mon[P]);
                 Dec(mon[R]);
                 Inc(KK[R]);
                     end;
                end;
 For ii:=1 to N do
      if a[P][ii]=1 then begin
              if Kol<K then f:=true else f:=false;
              DFS(ii,P,f);
                         end;
end;

begin
 Assign(input,'input.txt');Reset(input);
 Assign(output,'output.txt');Rewrite(output);
 Read(N,M,K);
 For i:=1 to N do mon[i]:=1;
 For i:=1 to M do Read(c[i]);
 For i:=1 to N do begin
                   Read(x);
                   a[i][x]:=1;
                  end;
 Read(Fin);
  For i:=1 to M do DFS(c[i],0,false);
 Write(mon[Fin]);
end.
