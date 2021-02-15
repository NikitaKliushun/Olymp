type
     TList=^List;
     List=record
                V:Int64;
                Next,pred:TList;
            end;
var
     N,X,E,nm,answer,ps,nomm,K,x1,x2:Int64;
     i,j:Longint;
     P,Q,tmp,beg:TList;
begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output1.txt');
     ReWrite(Output);
     Readln(N,X);
     P:=Nil;
     for i:=1 to N do
begin
     Read(X);
     answer:=answer+Sqr(X);
     New(Q);
     Q^.V:=X;
     Q^.Next:=P;
     Q^.pred:=Nil;
     if P<>Nil then P^.pred:=Q;
     P:=Q;
     if i=1 then beg:=Q;
 end;
     ps:=1;
     P:=beg;
     Readln(K);
     Writeln(answer);
     for i:=1 to K do
begin
     Readln(E,nomm);
     if ps>=nomm then begin
                           while ps>nomm do
                      begin
                           Dec(ps);
                           P:=P^.Next;
                       end;
                       end
                 else begin
                           while ps<nomm do
                      begin
                           Inc(ps);
                           P:=P^.pred;
                       end;
                       end;
     if E=1 then begin
                      answer:=answer-sqr(P^.V);
                      if P^.Next<>Nil then answer:=answer-sqr(P^.Next^.V);
                      if P^.pred<>Nil then answer:=answer-sqr(P^.pred^.V);
                      x1:=0;
                      x2:=0;
                      if (P^.Next<>Nil) and (P^.pred=Nil) then x1:=P^.V
                                                          else
                      if (P^.Next=Nil) and (P^.pred<>Nil) then x2:=P^.V
                                                          else begin
                                                                    X1:=P^.V div 2;
                                                                    x2:=x1;
                                                                    if P^.V mod 2=1 then Inc(X2);
                                                                end;
                      if P^.pred<>Nil then begin
                                                Inc(P^.pred^.V,x2);
                                                answer:=answer+sqr(P^.pred^.V);
                                                P^.pred^.Next:=P^.Next;
                                            end;
                      if P^.Next<>Nil then begin
                                                Inc(P^.Next^.V,x1);
                                                answer:=answer+sqr(P^.Next^.V);
                                                P^.Next^.pred:=P^.pred;
                                            end;
                      P^.V:=0;
                      if P^.pred<>Nil then tmp:=P^.pred
                                      else begin
                                                tmp:=P^.Next;
                                                Dec(ps);
                                            end;
                      dispose(P);
                      P:=tmp;
                      Dec(N);
                  end
            else begin
                      x1:=P^.V div 2;
                      x2:=x1;
                      if P^.V mod 2=1 then Inc(X2);
                      answer:=answer-sqr(P^.V);
                      New(Q);
                      Q^.Next:=P;
                      Q^.Pred:=P^.pred;
                      if P^.pred<>Nil then P^.pred^.Next:=Q;
                      P^.pred:=Q;
                      P^.V:=x1;
                      Q^.V:=x2;
                      Inc(N);
                      answer:=answer+sqr(P^.V)+sqr(Q^.V);
                  end;
     Writeln(answer);
 end;
     Close(Input);
     Close(Output);
 end.
