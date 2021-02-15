var
   a          :  array [0..32000] of LongInt;
   S          :  array [0..250] of LongInt;
   N,K,X,i,j  :  LongInt;

function Min(x,y : LongInt) : LongInt;
begin
    if x < y then Min:=x
             else Min:=y;
end;

begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Read(N);
    K:=N*(N+1) div 2;
    for i:=1 to K do
      Read(a[i]);
    S[0]:=0;
    for i:=1 to N do
    S[i]:=MaxLongInt;
    for i:=1 to N do
    begin
        K:=i; X:=N-1;
        for j:=i downto 1 do
        begin
            S[i]:=Min(S[i],S[i-j]+a[K]);
            K:=K+X;
            Dec(X);
        end;
    end;
    Write(S[N]);
    Close(Input);
    Close(Output);
end.
