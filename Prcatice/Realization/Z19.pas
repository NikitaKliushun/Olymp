Const
    Inf = 1000000;
    Dx : Array [1..8] of Longint = (2,1,-1,-2,-2,-1,1,2);
    Dy : Array [1..8] of Longint = (1,2,2,1,-1,-2,-2,-1);

Var
  S : String;
  i,j,Ans,x,y : Longint;
  A : Array [1..8,1..8] of Longint;

Procedure H_V (x,y : Longint);
Var
 i : Longint;

Begin
    For i:=x downto 1 do
     if a[i,y] <> Inf then a[i,y]:=1;
    For i:=y to 8 do
     if a[x,i] <> Inf then a[x,i]:=1;
    For i:=x to 8 do
     if a[i,y] <> Inf then a[i,y]:=1;
    For i:=y downto 1 do
     if a[x,i] <> Inf then a[x,i]:=1;
End;

Procedure D (x,y : Longint);
Var
  i,j : Longint;

Begin
    i:=x; j:=y;
    While (i <= 8) and (j <= 8) do
    begin
        if a[i,j] <> Inf then a[i,j]:=1;
        Inc(i); Inc(j);
    end;
    i:=x; j:=y;
    While (i <= 8) and (j >= 1) do
    begin
        if a[i,j] <> Inf then a[i,j]:=1;
        Inc(i); Dec(j);
    end;
    i:=x; j:=y;
    While (i >= 1) and (j <= 8) do
    begin
        if a[i,j] <> Inf then a[i,j]:=1;
        Dec(i); Inc(j);
    end;
    i:=x; j:=y;
    While (i >= 1) and (j >= 1) do
    begin
        if a[i,j] <> Inf then a[i,j]:=1;
        Dec(i); Dec(j);
    end;
End;

Procedure Full (x,y,i : Longint);
Begin
    If i = 1 then begin
                      H_V(x,y);
                      D(x,y);
                  end;
    if i = 4 then H_V(x,y);
    if i = 7 then begin
                      For i:=1 to 8 do
                       if (x+Dx[i] < 9) and (y+Dy[i] < 9) and
                          (x+Dx[i] > 0) and (y+Dy[i] > 0) and
                          (a[x+Dx[i],y+Dy[i]] <> Inf) then a[x+Dx[i],y+Dy[i]]:=1;
                  end;
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     ReadLn(S);
    Close(Input);
    i:=1;
    while i <= 8 do
    begin
        y:=Ord(s[i]) - Ord('A') + 1;
        x:=9-Ord(s[i+1]) + Ord('0');
        a[x,y]:=Inf;
        Full(x,y,i);
        Inc(i,3);
    end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     For i:=1 to 8 do
      For j:=1 to 8 do
       If a[i,j] = 1 then Inc(Ans);
     Write(Ans);
    Close(Output);
End.