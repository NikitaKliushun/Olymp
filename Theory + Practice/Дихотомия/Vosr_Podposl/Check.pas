const
    MaxD      =     50001;
var
    x,y,i     :     LongInt;
    a         :     array [1..MaxD] of LongInt;
    F         :     BooLean;
begin
    Assign(Input,'Output.out');
    ReSet(Input);
    ReadLn(x);
    Close(Input);
    Assign(Input,'Answer.out');
    ReSet(Input);
    ReadLn(y);
    for i:=1 to y do
      Read(a[i]);
    Close(Input);
    F:=True;
    if x <> y then F:=False
              else begin
                       for i:=1 to y-1 do
                         if a[i+1] <= a[i] then begin
                                                    F:=False;
                                                    Break;
                                                end;
                   end;
    if F then WriteLn('Ok')
         else WriteLn('Wrong answer');
end.