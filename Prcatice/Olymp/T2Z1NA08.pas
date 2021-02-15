{Kliushun Nikita Sergeevich, Berezino, Task 1}

Var
 M,W,i,j,s,b,t,Ans : Longint;
 day,day_t : Int64;
 D : Array [1..100000] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(M,W);
     For i:=1 to M do
      Read(d[i]);
     Read(s,b,t);
    Close(Input);
    day:=s;
    For i:=1 to M do
    begin
        if d[i] < t then begin
                             day:=(day + d[i]) mod w;
                             if day = 0 then day:=w;
                         end
                    else begin
                             day_t:=(day + t -1) mod w;
                             if day_t = 0 then day_t:=w;
                             if day_t = b then Inc(Ans);
                             day:=(day + d[i]) mod w;
                             if day = 0 then day:=w;
                         end;
    end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     Write(Ans);
    Close(Output);
End.
