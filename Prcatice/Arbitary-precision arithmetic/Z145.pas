Var
  B,i,L,p : Longint;
  x       : Char;
  f       : Boolean;
  A       : Array [1..2500] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     i:=0;
     while not EOLn do
     begin
      Read(x);
      Inc(l);
      a[l]:=Ord(x) - Ord('0');
     end;
     ReadLn;
     Read(b);
    Close(Input);
  {  i:=l;
    while true do
     if (b mod 10 = 0) and (a[i] = 0) then begin
                                               b:=b div 10;
                                               dec(l);
                                               dec(i);
                                           end
                                      else Break;  }
    Assign(Output,'Output.txt');
    ReWrite(Output);
{     if b =1 then for i:=1 to L do
                   Write(a[i])
             else
    begin       }
     f:=true;
     For i:=1 to l do
     begin
         p:=p*10+a[i];
         if (P < B) and F then continue;
         f:=false;
         Write(p div b);
         p:=p mod b;
     end;
     if f then Write(0);
  //  end;
    Close(Output);
End.
