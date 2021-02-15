var
   a          :  array [0..250,1..250] of LongInt;
   S          :  array [0..250] of LongInt;
   N,K,p,i,j  :  LongInt;

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
    for i:=0 to N-1 do
    for j:=i+1 to N do
      Read(a[i,j]);
    S[0]:=0;
    for i:=1 to N do
    S[i]:=MaxLongInt;
    for i:=1 to N do
    for j:=i downto 1 do
      S[i]:=Min(S[i],S[i-j]+a[i-j,i]);
    Write(S[N]);
    Close(Input);
    Close(Output);
end.
