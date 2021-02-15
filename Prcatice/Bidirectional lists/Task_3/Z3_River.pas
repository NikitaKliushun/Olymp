Type
   TList = ^List;
   List = record
               V : Int64;
               Prev,Next : TList;
          end;

Var
 N,K,i,x,Sum,e,v,F,N1 : Longint;
 Beg,P,P1,Q : Tlist;
 A : Array [1..10000] of TList;

Procedure In_List (t : Longint);
Var
  Q : Tlist;

Begin
    New(q);
    Q^.V:=t;
    Q^.Next:=Beg;
    Q^.Prev:=Nil;
    Beg^.Prev:=Q;
    Beg:=Q;
End;

Procedure Find (f1 : Longint);
Var
  i : Longint;

Begin
    If f - f1 < 0 then begin
                           for i:=f to f1-1 do
                            P:=P^.Prev;
                           f:=f1;
                       end
                  else
     If f - f1 > 0 then begin
                            for i:=f1 to f-1 do
                             P:=P^.Next;
                            f:=f1;
                        end
                   else f:=f1;
End;

Procedure Delete (Var P : TList);
Begin
    if F = N1 then begin
                      Beg:=Beg^.Next;
                      P:=P^.Next;
                      P^.Prev:=Nil;
                  end
             else
    if F = 1 then begin
                       P^.Prev^.Next:=Nil;
                       P1:=P^.Prev;
                       Dispose(P);
                       P:=P1;
                   end
             else begin
                      P^.Prev^.Next:=P^.Next;
                      P^.Next^.Prev:=P^.Prev;
                      P1:=P^.Prev;
                      Dispose(P);
                      P:=P1;
                  end;
End;

Procedure Insert (Var P,Q : TList);
Begin
    If P^.Next = Nil then begin
                              Q^.Next:=Nil;
                              Q^.Prev:=P;
                              P^.Next:=Q;
                          end
                     else begin
                              Q^.Next:=P^.Next;
                              Q^.Prev:=P;
                              P^.Next^.Prev:=Q;
                              P^.Next:=Q;
                          end;
End;

Procedure S (Q : TList);
Begin
    Sum:=Sum + Sqr(Q^.V);
    If Q^.Next = Nil then Exit
                     else S(Q^.Next);
End;

Begin
   Assign(Input,'Input.txt');
   Assign(Output,'Output.txt');
   ReSet(Input);
   ReWrite(Output);
    ReadLn(N);
    Read(x);
    Sum:=Sum + sqr(x);
    New(Beg);
    Beg^.V:=x;
    Beg^.Next:=Nil;
    Beg^.Prev:=Nil;
//    i:=1;
//    In_List(x);
    For i:=2 to N do
    begin
        Read(x);
        In_List(x);
        Sum:=Sum + Sqr(x);
    end;
    WriteLn(Sum);
    N1:=N;
    P:=Beg;
    F:=N;
    Read(K);
    For i:=1 to K do
    begin
        Read(e,v);
        Find(v);
        if e = 1 then begin
                          if F = 1 then P^.Prev^.V:=P^.Prev^.V + P^.V
                                    else
                           if F = N1 then P^.Next^.V:=P^.Next^.V + P^.V
                                     else begin
                                              P^.Next^.V:=P^.Next^.V + (P^.V div 2);
                                              P^.Prev^.V:=P^.Prev^.V + (P^.V div 2) + (P^.V mod 2);
                                          end;
                          Delete(P);
                          If F = N1 then Dec(F);
                          Dec(N1);
                      end
                 else begin
                          Inc(N1); Inc(F);
                          New(Q);
                          Q^.V:=P^.V div 2;
                          P^.V:=(P^.V Div 2) + (P^.V mod 2);
                          Insert(P,Q);
                      end;
       Sum:=0; S(Beg); WriteLn(Sum);
    end;
   Close(Input);
   Close(Output);
End.
