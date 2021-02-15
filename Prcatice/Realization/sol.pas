var
    M,pr                              :  array [1..1001] of LongInt;
    S,A,B                             :  String;
    F                                 :  Boolean;
    i,j,N,X,Y,k,cod,Ost,Kol,q,L,ii,D  :  LongInt;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    ReadLn(S);
    A:='';
    B:='';
    Close(Input);
    while S[1] <> '/' do
      begin
           A:=A + S[1];
           Delete(S,1,1);
      end;
    if A = '0' then begin
                        WriteLn(0);
                        Close(Output);
                        Halt;
                    end;
    Delete(S,1,1);
    while S <> '' do
      begin
           B:=B + S[1];
           Delete(S,1,1);
      end;
    Val(A,X,cod);
    Val(B,Y,cod);
end;

procedure Prefix;
begin
    FillChar(pr,SizeOf(pr),0);
    pr[1]:=0;
    k:=0;
    for j:=2 to D do
      begin
          while (k > 0) and (M[k+1] <> M[j]) do k:=pr[k];
          if M[k+1] = M[j] then Inc(k);
          pr[j]:=k;
      end;
end;

begin
    InputData;
    N:=X div Y;
    Ost:=X mod Y;
    L:=Y;
    Kol:=0;
    while L > 0 do
         begin
             Inc(Kol);
             L:=L div 10;
         end;
    i:=0;
    if Ost = 0 then WriteLn(N)
               else
       begin
           repeat
                Inc(i);
                M[i]:=Ost * 10 div Y;
                Ost:=Ost * 10 mod Y;
           until (i > 1000) or (Ost = 0);
           if Ost = 0 then begin
                               Write(N,'.');
                               for j:=1 to i do
                                 Write(M[j]);
                           end
                      else begin
                               Write(N,'.');
                               F:=True;
                               D:=i;
                               while F do
                                  begin
                                      Prefix;
                                      for ii:=1 to D do
                                        if pr[ii] = Kol then
                                              begin
                                                  Write('(');
                                                  for j:=1 to ii-Kol do
                                                    Write(M[j]);
                                                  WriteLn(')');
                                                  F:=False;
                                                  Break;
                                              end;
                                      if F then Write(M[1]);
                                      for q:=1 to D-1 do
                                        M[q]:=M[q+1];
                                      Dec(D);
                                  end;
                           end;
       end;
    Close(Output);
end.
