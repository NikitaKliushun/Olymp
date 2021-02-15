
var
   i,j,N,K,jj  :    LongInt;
   Ans         :    Int64;

function Nod (x,y : LongInt) : LongInt;
begin
    while (x <> 0) and (y <> 0) do
      if x > y then x:=x mod y
               else y:=y mod x;
    Nod:=x + y;
end;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(K);
    Close(Input);
end;
                
function Prost(x : LongInt) : Boolean;
var
    A,q : LongInt;
begin
    Prost:=True;
    A:=Trunc(Sqrt(x));
    for q:=2 to A do
      if x mod q = 0 then
                begin
                    Prost:=False;
                    Exit;
                end;
end;
                
{
function Prost(x : LongInt) : Boolean;
var
   a,St,S : LongInt; 
begin
    Prost:=False;
    a:=2;
    St:=x-1;
    S:=1;
    while St > 0 do
        if St mod 2 = 0 then 
                   begin
                       St:=St shr 1;
                       a:=a*a;
                   end
                        else
                   begin
                       Dec(St);
                       S:=S * a;
                   end;
   if S mod x = 1 then Prost:=True;
end;
}

procedure Sol;
begin
    N:=Trunc(Sqrt(K));
    for i:=2 to N do
      begin
          j:=i+1;
          while i * j <= K do
              begin
                  if Prost(i) then begin
                                        jj:= K div i;
                                        Ans:=Ans + ((jj - i) - ((jj div i) - 1));
                                        Break;
                                   end
                              else
                                 if j mod i <> 0 then
                                                if Nod(i,j) = 1 then Inc(Ans);
                  Inc(j);
              end;
      end;
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    WriteLn(Ans);
    Close(Output);
end;

begin
    InputData;
    Sol;
    OutputData;
end.
