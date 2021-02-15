{Pivovarevich Vitaly Igorevcih, g. Vileyka, shkola 3, klass 11A, zadacha 2, tur 2}
Program T2Z2NA06;
Var f1,f2:text;
m,n,p1:word;
pla,st:int64;
exc:boolean;
ma:array [1..3000] of int64;
map:array [1..3000] of word;
na:array [1..3000] of int64;

Function che (n,p:word) :boolean;
Var i:longint;
Begin
  Che:=false;
  For i:=1 to n do
      If (map[i]=p) then exit;
  che:=true;
end;

Function loc (p1:word ): int64;
Var i:byte;
Begin
  For i:=1 to m  do
      If map[i]=p1 then begin loc:=ma[i]; exit; end;
  loc:=0;
end;

Procedure act(z:integer);
Var p:word;
Begin
  For p:=1 to n do
      Begin
      If (che(n,p)=true) then map[z]:=p;
      If (z<m) and (map[z]>0) then act (z+1)
               Else
                 If (map[z]>0) then
                 Begin
                 p1:=1;
                 pla:=0;
                 while(p1<=n) do
                       Begin
                       st:=loc(p1);
                       if na[p1]+st>na[p1] then begin
                                                  if pla<na[p1]+st then pla:=na[p1]+st
                                                  else break;
                                                end;
                       inc(p1);
                       end;
                 end;
      If p1>n then exit;
      map[z]:=0;
      end;
  If (z=1) then exc:=true;
end;

Begin
  Assign(f1,'input.txt');
  Assign(f2,'output.txt');
  exc:=false;
  Reset(f1);
  Readln(f1,m,n);
  For m:=1 to m do Read(f1,ma[m]);
  Readln(f1);
  For n:=1 to n do Read(f1,na[n]);
  Close(f1);
  Act(1);
  Rewrite(f2);
  If exc= false then For m:=1 to m do
      Write(f2,map[m],' ')
  else write(f2,-1);
  Close(f2);
end.
