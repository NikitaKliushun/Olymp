{Клюшун Никита Сергеевич, г. Березино, Задача 4}

Var
  N,K,i,j,Min,q,q1,qq : Longint;
  A : Array [1..100,1..100] of Longint;

Procedure Check(x : Longint);
Var
  i,j,kol : Longint;

Begin
    For j:=1 to K do
    begin
        kol:=1;
        For i:=1 to N-1 do
         if a[i,j] = a[i+1,j] then Inc(kol);
        if kol = N then begin
                           // if x > K - x then x:=K - x;
                            if x < Min then Min:=x;
                        end;
    end;
End;

Procedure Per (x,sum : Longint);
Var
 i,q,r : Longint;

Begin
    if x > N then Exit;
    For i:=1 to K-1 do
    begin
        qq:=a[x,k]; q:=a[x,1];
        For j:=2 to K do
        begin
            q1:=q;
            q:=a[x,j];
            a[x,j]:=q1;
        end;
        a[x,1]:=qq;
        r:=x;
        if r < K - i  then r:=K - i;
        Check(sum+r);
        Per(x+1,sum+r);
    end;
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N,K);
     For i:=1 to N do
      For j:=1 to K do
       Read(a[i,j]);
    Close(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
    Min:=10000;
    Check(0);
    if Min = 0 then begin
                        Write(Min);
                        Close(Output);
                        Halt;
                    end;
    Per(1,0);
     if Min = 10000 then Write(-1)
                    else Write(Min);
    Close(Output);
End.
