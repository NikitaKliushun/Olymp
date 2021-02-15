Var
 B,i,l,c : Longint;
 S : String;
 A : Array [1..201] of longint;

Begin
    Assign(input,'input.txt');
    ReSet(input);
     ReadLn(S);
     L:=Length(S);
     For i:=L downto 1 do
      a[l-i+1]:=Ord(s[i]) - Ord('0');
     Read(B);
    Close(input);
    c:=0;
    for i:=1 to L do
    begin
        a[i]:=a[i] * B + c;
        c:=a[i] div 10;
        a[i]:=a[i] mod 10;
    end;
    i:=length(s);
    while c > 0 do
    begin
        Inc(i);
        a[i]:=c mod 10;
        c:=c div 10;
    end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
    while (i > 1) and (a[i] = 0) do
     Dec(i);
    while i >= 1 do
    begin
     Write(a[i]);
     Dec(i);
    end;
    Close(Output);
End.
