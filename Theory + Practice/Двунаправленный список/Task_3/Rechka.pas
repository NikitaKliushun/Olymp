type
  TList = ^List;
  List = record
          v:Int64;
          nx,pr:TList;
         end;

var
  beg,q,p:TList;
  x,i,k,n,e,v,w:longint;
  ans:int64;

procedure Sol;
begin
  read(x);
  New(q);
  q^.v:=x;
  q^.pr:=Nil;
  if i = 1 then begin
                  beg:=q;
                  beg^.nx:=nil;
                end
           else begin
                  q^.nx:=beg;
                  beg^.pr:=q;
                  beg:=q;
                end;
  ans:=ans+sqr(x);
end;

procedure Ins(var P:TList;y:longint);
begin
  New(q);
  q^.v:=y;
  q^.pr:=p;
  if P^.nx = Nil then q^.nx:=nil
                 else begin
                       q^.nx:=P^.nx;
                       P^.nx^.pr:=q;
                      end;
  P^.nx:=q;
  Inc(n); Inc(x);
end;

procedure Del(var P:TList);
begin
  if x = n then begin
                  beg:=beg^.nx;
                  beg^.pr:=nil;
                end
           else
  if x = 1 then begin
                  P^.pr^.nx:=nil;
                  P^.v:=0;
                  P:=P^.pr;
                end
           else begin
                  P^.pr^.nx:=p^.nx;
                  P^.nx^.pr:=P^.pr;
                  P^.v:=0;
                  P:=P^.pr;
                end;
  Dec(n);
end;

begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
    read(n,w);
    for i:=1 to n do Sol;
    Writeln(ans);
    read(k);
    x:=n;P:=beg;
    for i:=1 to k do
    begin
     read(e,v);
     while x < v do
      begin
        Inc(x);
        P:=P^.pr;
      end;
     while x > v do
      begin
        Dec(x);
        P:=P^.nx;
      end;
     Dec(ans,sqr(P^.v));
     if e = 1 then
      begin
        if v = 1 then begin
                        Dec(ans,sqr(P^.pr^.v));
                        Inc(P^.pr^.v,P^.v);
                        Inc(ans,sqr(P^.pr^.v));
                      end
                 else
        if v = n then begin
                        Dec(ans,sqr(P^.nx^.v));
                        Inc(P^.nx^.v,P^.v);
                        Inc(ans,sqr(P^.nx^.v));
                      end
                 else begin
                        Dec(ans,sqr(P^.nx^.v));
                        Dec(ans,sqr(P^.pr^.v));
                        Inc(P^.nx^.v,P^.v div 2);
                        Inc(P^.pr^.v,(P^.v div 2)+(P^.V mod 2));
                        ans:=ans+sqr(P^.nx^.v);
                        ans:=ans+sqr(P^.pr^.v);
                      end;
        Del(P);
      end
              else
      begin
        Ins(P,P^.v div 2);
        P^.v:=(P^.v+1)div 2;
        Inc(ans,sqr(P^.v));
        Inc(ans,sqr(P^.nx^.v));
      end;
     Writeln(ans);
    end;
  close(input);
  close(output);
end.
