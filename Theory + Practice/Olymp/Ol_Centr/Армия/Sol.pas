const
     MaxD                   =     10100;
var
     S                      :     array [1..MaxD] of LongInt;
     xx,i,j,N,K,a,Ans,Sum   :     LongInt;

function Prev (X : LongInt) : LongInt;
begin
    Prev:=X and (X-1);
end;

function Next (X : LongInt) : LongInt;
begin
    Next:=(X and (X-1) xor X) + X;
end;

procedure ModiFy (poz, Dx : LongInt);
begin
    xx:=poz;
    while xx <= MaxD do
        begin
            S[xx]:=S[xx] + Dx;
            xx:=Next(xx);
        end;
end;

function GetMax (L,R : LongInt) : LongInt;
var
   Res : LongInt;
begin
    Res:=0;
    xx:=R;
    while xx > 0 do
        begin
            Res:=Res + S[xx];
            xx:=Prev(xx);
        end;
    xx:=L-1;
    while xx > 0 do
        begin
            Res:=Res - S[xx];
            xx:=Prev(xx);
        end;
    GetMax:=Res;
end;

begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Read(N,K);
    Ans:=0;
    Sum:=0;
    for i:=1 to K do
    begin
        Sum:=0;
        FillChar(S,SizeOf(S),0);
        for j:=1 to N do
          begin
              Read(a);
              ModiFy(a,1);
              Sum:=Sum + (j - GetMax(1,a));
          end;
        Ans:=Ans + Sum;
    end;
    Write(Ans);
    Close(Input);
    Close(Output);
end.
