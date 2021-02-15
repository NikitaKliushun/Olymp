{Клюушн Никита Сергеевич, г. Березино, Средняя школа №3}

Var
 N,M,V,K,i,j,x,y,S,q : Longint;
 A : Array [1..100,1..100] of Byte; //  НЕ ЗАБУДЬ СМЕНИТЬ ТИП НА BYTE !!!
 C : Array [1..10000] of Byte;     //  НЕ ЗАБУДЬ СМЕНИТЬ ТИП НА BYTE !!!
 P : Array [1..200] of Byte;      //  НЕ ЗАБУДЬ СМЕНИТЬ ТИП НА BYTE !!!

Procedure Init;
Begin
    For i:=1 to N do
     For j:=1 to M do
      a[i,j]:=250;
End;

Procedure Rast (x,y : Longint);
Var
 i,j : Longint;

Begin
    For i:=1 to N do
     For j:=1 to M do
     begin
         if a[i,j] <> 0 then
                if (Abs(i-x) + Abs(j-y)) < a[i,j] then
                   begin
                       if a[i,j] <> 250 then Dec(p[a[i,j]]);
                       Inc(p[Abs(i-x) + Abs(j - y)]);
                       a[i,j]:=Abs(i - x) + Abs(j - y);
                   end;
     end;
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N,M,V,K);
     Init;
     For i:=1 to V do
     begin
         Read(x,y);
         a[x,y]:=0;
         Rast(x,y);
     end;
     For i:=1 to K do
      Read(c[i]);
    Close(Input);
    For i:=1 to K do
     For j:=1 to k-i do
      If c[j] > c[j+1] then begin
                                q:=c[j];
                                c[j]:=c[j+1];
                                c[j+1]:=q;
                            end;
    j:=1; S:=0;
    for i:=K downto 1 do
    begin
        If p[j] < 1 then Inc(j);
        S:=S + c[i] * j;
        Dec(p[j]);
    end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     Write(S);
    Close(Output);
End.

