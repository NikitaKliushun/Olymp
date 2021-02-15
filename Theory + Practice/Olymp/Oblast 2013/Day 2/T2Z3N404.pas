type
     TList=^List;
     List=record
                V:Longint;
                Next:TList;
            end;
var
     a:array [1..10500] of TList;
     c,d,f,m:array [1..10500] of Longint;
     F1:Boolean;
     Kol,Uk,Uk1,i,j,Ans,X,Y,N,K:Longint;
procedure In_List(V1,V2:Longint);
var
     Q:TList;
begin
     New(Q);
     Q^.V:=V2;
     Q^.Next:=a[V1];
     a[V1]:=Q;
 end;
procedure DFS(X:Longint);
var
     P:TList;
begin
     m[X]:=Uk;
     P:=a[X];
     while P<>Nil do
begin
     if m[P^.V]=0 then DFS(P^.V);
     P:=P^.Next;
 end;
 end;
procedure DFS_2(X:Longint);
var
     P:TList;
begin
     P:=a[X];
     F1:=False;
     while P<>Nil do
begin
     if m[X]<>m[P^.V] then F1:=True;
     P:=P^.Next;
end;
     if F1=False then begin
                          Inc(Uk1);
                          f[Uk1]:=X;
                      end;
 end;
begin
     Assign(Input,'input.txt');
     Reset(Input);
     Assign(Output,'output.txt');
     ReWrite(Output);
     Readln(N,K);
     for i:=1 to K do
begin
     Readln(X,Y);
     In_List(X,Y);
     In_List(Y,X);
     Inc(c[X]);
     Inc(c[Y]);
 end;
     for i:=1 to N do
     if c[i] mod 2=1 then begin Inc(Ans); d[Ans]:=i; end;
     if Ans=0 then Writeln('0')
              else
if Ans=2 then Writeln('2')
         else
begin
     for i:=1 to N do
     if m[i]=0 then begin
                         Inc(Uk);
                         DFS(i);
                     end;
     for i:=1 to Ans-1 do
     for j:=i+1 to Ans do
     if m[d[i]]<>m[d[j]] then begin In_List(d[i],d[j]); In_List(d[j],d[i]); Inc(Kol); end;
     for i:=1 to N do
     DFS_2(i);
     for i:=1 to Uk1-1 do
begin
     In_List(f[i],f[i+1]);
     Inc(Kol);
 end;
     Writeln(Kol);
 end;
     Close(Input);
     Close(Output);
 end.




