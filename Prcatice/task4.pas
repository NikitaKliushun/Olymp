Const
 Dx : array [1..4] of Longint = (-1,0,1,0);
 Dy : array [1,,4] of Longint = (0,1,0,-1);

Var
 N,M,i,j : Longint;
 A,Met : Array [1..100,1..100] of Longint;

procedure Search (x,y : Longint);
var
 i,j : Longint;

Begin
        if met[x,y] = 3 then begin
                                 f:=true;
                                 exit;
                             end;
        if f then exit;
        for i:=1 to 4 do
        begin
            (x + Dx[i] > 0) and (y + Dy[i] > 0) and (x + Dx[i] <= N) and (y + Dy[i] <= M) and ()
        end;

End;

Begin
        Read(N,M);
        For i:=1 to N do
         For j:=1 to M do
             Read(a[i,j]);
        fillchar(Met,SizeOf(Met),0);
        for i:=1 to M do
        begin
            met[1,i]:=3;
            met[N,i]:=3;
        end;
        for i:=1 to N do
        begin
            met[i,1]:=3;
            met[i,M]:=3;
        end;
        for i:=1 to N do
         for j:=1 to M do
          if (i <> N) and (j <> M) and (i <> 1) and (j <>1) and (a[i,j] = 1) then begin
                                                                                        f:=false;
                                                                                        Search(i,j);
                                                                                        if f = false then Inc(Island);
                                                                                  end;
End.