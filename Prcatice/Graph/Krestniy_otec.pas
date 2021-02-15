Type
 TList = ^List;
 List = record
             V : Longint;
             Next : TList;
        end;

Var
 N,i,ii,Min,x,y : Longint;
 Sl,Pr,K,M,Nom : Array [1..50000] of Longint;
 A : Array [1..50000] of TList;

Procedure In_List (T1,T2 : Longint);
Var
 q : TList;

Begin
 New(Q);
 Q^.V:=t2;
 Q^.Next:=a[t1];
 a[t1]:=Q;
End;

Procedure DFS_1 (x : Longint);
Var
 q : TList;
 y : Longint;

Begin
 q:=a[x];
 M[x]:=1;
 While q<>Nil do
 begin
     y:=q^.V;
     If M[y] = 0 then begin
                          DFS_1(y);
                          Sl[x]:=Sl[x] + Sl[y] + 1;
                          Pr[x]:=N - Sl[x] - 1;
                      end;
     q:=q^.Next;
 end;
End;

Function Max (a,b : Longint) : Longint;
begin
 If a > b then Max:=a
          else Max:=b;
end;

Procedure DFS_2 (X : Longint);
Var
  q : TList;
  y : Longint;

Begin
    M[x]:=1;
    q:=a[x];
    While q <> Nil do
    Begin
        y:=q^.V;
        if M[y] = 0 then begin
                             If Pr[x] > Sl[y] + 1 then Nom[x]:=Max(Nom[x],Pr[x])
                                                  else Nom[x]:=Max(Nom[x],Sl[y]+1);
                             DFS_2(y);
                        end;
       q:=q^.Next;
   end;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
  For i:=1 to N-1 do
  Begin
      Read(x,y);
      In_List(x,y);
      In_List(y,x);
      Inc(K[x]);
      Inc(k[y]);
  end;
 Close(Input);
 i:=1;
 While k[i] <> 1 do
  Inc(i);
 DFS_1(i);
 FillChar(M,Sizeof(M),0);
 DFS_2(i);
 For i:=1 to N do
  If Nom[i] = 0 then Nom[i]:=N-1;
 Min:=maxlongint;
 For i:=1 to N do
  If Nom[i] < Min then begin
                           Min:=Nom[i];
                           ii:=1;
                           M[ii]:=i;
                       end
                  else if Nom[i] = Min then begin
                                                Inc(ii);
                                                M[ii]:=i;
                                            end;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For i:=1 to ii do
   Write(M[i],' ');
 Close(Output);
End.