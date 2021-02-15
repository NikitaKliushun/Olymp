const
      dx : array [1 .. 4] of Longint = (1 , -1 , 0 , 0);
      dy : array [1 .. 4] of Longint = (0 , 0 , 1 , -1);
var
     a , met : array [0 .. 111 , 0 .. 111] of Longint;
     N , M , i , j , isl , oz : Longint;
     F : Boolean;
procedure DFS(x , y : Longint);
var
     i : Longint;
begin
     if (a[x][y] = 2) then begin
                                F := false;
                                Exit;
                            end;
     met[x][y] := 1;
     for i:= 1 to 4 do
       if (met[x + dx[i]][y + dy[i]] = 0) then
         if (a[x + dx[i]][y + dy[i]] = a[x][y]) or
         (a[x + dx[i]][y + dy[i]] = 2) then
           DFS(x + dx[i] , y + dy[i]);
 end;

begin
     Readln(N , M);
     for i:= 1 to N do
       for j:= 1 to M do
         begin
              Read(a[i][j]);
              met[i][j] := 0;
          end;
     isl:=0;
     oz:=0;
     for j:= 0 to M+1 do
       begin
            a[0][j] := 2;
            a[N+1][j] := 2;
        end;
     for i:= 0 to N+1 do
       begin
            a[i][0] := 2;
            a[i][M+1] := 2;
        end;
     for i:= 1 to N do
       for j:= 1 to M do
         if (met[i][j] = 0) then
           begin
                F:=True;
                DFS(i , j);
                if (F) then
                  if (a[i][j] = 0) then Inc(oz)
                    else Inc(isl);
            end;
     Writeln(isl,' ',oz);
     Readln(N);
 end.


