Var
 Str,Str1 : String;
 i,x,h1,m1,s1,h2,m2,s2,Start,Finish,cod : Longint;
 a : array [0..9] of Longint;

Procedure Ind (x : Longint);
begin
    if x < 10 then Inc(a[0]);
    if x = 0 then Inc(a[0]);
    while x > 0 do
    begin
        inc(a[x mod 10]);
        x:=x div 10;
    end;
end;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     ReadLn(Str); ReadLn(Str1);
    Close(Input);
    Val(str[1]+str[2],h1,cod);
    Val(str[4]+str[5],m1,cod);
    Val(str[7]+str[8],s1,cod);
    Start:=h1 * 3600 + m1 * 60 + s1;
    Val(str1[1]+str1[2],h2,cod);
    Val(str1[4]+str1[5],m2,cod);
    Val(str1[7]+str1[8],s2,cod);
    Finish:=h2 * 3600 + m2 * 60 + s2;
    For i:=start to finish do
    begin
        x:=i;
        ind(x div 3600);
        x:=x mod 3600;
        ind(x div 60); ind(x mod 60);
    end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     for i:=0 to 9 do
      WriteLn(a[i]);
    Close(Output);
End.