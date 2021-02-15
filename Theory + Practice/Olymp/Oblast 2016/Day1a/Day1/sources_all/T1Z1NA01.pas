{Куличок Никита Сергеевич
 ГУО"Березинская гимназия"
 11 класс
 Тур 1 Задача 1}
uses math;
var
     a,met,mmet:array [0..20,0..20] of Longint;
     hp:array [0..20] of Longint;
     cnt,cntt,i,j,N,ii,jj:Longint;
     u,X:Char;
     nm:array ['a'..'z'] of Longint;
function scet(i,j:Longint):Longint;
var
     kol,ans,ii,jj:Longint;
begin
     ii:=i-1;
     jj:=j;
     kol:=1;
     ans:=0;
     while (ii>0) and (a[ii,jj]=1) do
begin
     Inc(kol);
     Dec(ii);
 end;
     ans:=max(ans,kol);
     ii:=i;
     jj:=j-1;
     kol:=1;
     while (jj>0) and (a[ii,jj]=1) do
begin
     Inc(kol);
     Dec(jj);
 end;
     ans:=max(ans,kol);
     ii:=i;
     jj:=j+1;
     kol:=1;
     while (jj<=10) and (a[ii,jj]=1) do
begin
     Inc(kol);
     Inc(jj);
 end;
     ans:=max(ans,kol);
     ii:=ii+1;
     jj:=j;
     kol:=1;
     while (ii<=10) and (a[ii,jj]=1) do
begin
     Inc(kol);
     Inc(ii);
 end;
     ans:=max(ans,kol);
     Exit(ans);
 end;

procedure zap(i,j,kol:Longint);
var
     ii,jj:Longint;
begin
     met[i,j]:=kol;
     ii:=i-1;
     jj:=j;
     while (ii>0) and (a[ii,jj]=1) do
begin
     met[ii,jj]:=kol;
     Dec(ii);
 end;
     ii:=i;
     jj:=j-1;
     while (jj>0) and (a[ii,jj]=1) do
begin
     met[ii,jj]:=kol;
     Dec(jj);
 end;
     ii:=i;
     jj:=j+1;
     while (jj<=10) and (a[ii,jj]=1) do
begin
     met[ii,jj]:=kol;
     Inc(jj);
 end;
     ii:=ii+1;
     jj:=j;
     while (ii<=10) and (a[ii,jj]=1) do
begin
     met[ii,jj]:=kol;
     Inc(ii);
 end;
 end;

begin
     Assign(Input,'Input.txt');
     Reset(Input);
     Assign(Output,'Output.txt');
     ReWrite(Output);
     for i:=1 to 10 do
begin
     for j:=1 to 10 do
begin
     Read(X);
     if X='.' then a[i,j]:=0
              else a[i,j]:=1;
     met[i,j]:=0;
     mmet[i,j]:=0;
 end;
     Readln;
 end;
     cntt:=0;
     for i:=1 to 10 do
     for j:=1 to 10 do
     if a[i,j]=1 then
     if met[i,j]=0 then
begin
     cnt:=scet(i,j);
     Inc(cntt);
     hp[cntt]:=cnt;
     zap(i,j,cntt);
 end;
     i:=0;
     for u:='a' to 'i' do
begin
     Inc(i);
     nm[u]:=i;
 end;
     Inc(i);
     nm['k']:=i;
     Readln(N);
     for i:=1 to N do
begin
     Readln(ii,u,X);
     jj:=nm[X];
     if (a[ii,jj]=0) or (mmet[ii,jj]=1) then Writeln('MISS')
                                        else begin
     if hp[met[ii,jj]]-1>0 then Writeln('HIT')
                            else
     if (hp[met[ii,jj]]-1=0) and (cntt-1>0) then Writeln('DEAD')
                                            else begin
                                                      Write('GAME OVER');
                                                      Break;
                                                  end;
     Dec(hp[met[ii,jj]]);
     if hp[met[ii,jj]]<1 then Dec(cntt);
                                                  end;
     mmet[ii,jj]:=1;
 end;
     Close(Input);
     Close(Output);
 end.

