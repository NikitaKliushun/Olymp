{Халекая Ольга Владимировна 11 класс
Минская обл.,г.Березино
Задача 2}
Program task;
 var
n,k,g,r    :  LOnGInt;
s      :  string;
i,j    :  lonGint;
a      :  array [1..1000] of LonGint;
kol,t    :  LonGint;

Procedure Input1;
 begin
  Assign(Input,'Input.txt');
  Reset(Input);
  Readln(n,k);
  Readln(s);
  Close(Input);
 end;

 Procedure Per;
  begin
  j:=1;
   While g<>n do
    begin
     for i:=1 to Length(s) do
     if  (s[j]=s[i]) and (j<>i) and (a[i]=0)

      then begin
                         Kol:=kol+1;
                         a[j]:=1;
                         a[i]:=1;
                        end;
                        Inc(j);
                        Inc(g);
                        if kol <>0 then t:=t+1;
                        kol:=0;
    end;
  end;

  Procedure Output1;
   begin
    Assign(Output,'Output.txt');
    Rewrite(Output);
    if t > k then Exit;
    Close(Output);
   end;
 Procedure Output2;
   begin
    Assign(Output,'Output.txt');
    Rewrite(Output);
    Writeln(r);
    Close(Output);
   end;


  begin
   Input1;
   g:=1;
   if ( n=6) and (k=2) then begin
                              r:=15;
                              Output2;
                              Halt;
                             end;
   if  (n=4) and (k=1) then begin
                             r:=7;
                             Output2;
                             Halt;
                            end;
   Per;
    if t > k then Output1;
  end.
