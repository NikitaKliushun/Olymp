program T1Z2NB18;
var
t1,t2:text;                   kb,yb,z:ansistring; code:integer;
i,j:byte; k,y:cardinal;

begin
read (k,y);
while k<>0 do begin
str(k mod 2,z);
kb:=kb+z;
k:=k div 2;
end;
val (kb,k,code);
while y<>0 do begin
str(y mod 2,z);
yb:=yb+z;
y:=y div 2;
end;
val (yb,y,code);

end.


