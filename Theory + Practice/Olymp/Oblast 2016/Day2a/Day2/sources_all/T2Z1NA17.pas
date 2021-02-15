{Гайдук Илья Олегович,11 класс, Задача 1}
TYPE masD=array[1..11000] of integer;
VAR f2,f1:text;
    DinM:masD;
    kolM,dlNed,NG,dayN,dayM,i,x,wdn,wm,wdm,k:integer;
function ENDG:boolean;
begin
    if wm=kolM then
        if wdm>DinM[kolM] then
        ENDG:=true;
end;
procedure DN(var wdn:integer);
begin
    if wdn>dlNed then
    wdn:=1;
end;
procedure DM(var wdm:integer);
begin
    if wdm>DinM[wm] then
    begin
         wdm:=1;
         inc(wm);
    end;
end;
BEGIN
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
read(f1,kolM); read(f1,dlNed); readln(f1);
for i:=1 to kolM do
begin
    read(f1,x);
    DinM[i]:=x;
end;
readln(f1);
read(f1,NG); read(f1,dayN); read(f1,dayM);
wdn:=NG; wdm:=1; wm:=1;
while not ENDG do
Begin
    DN(wdn); DM(wdm);

    write(wdn,' ',wdm);
    writeln;
    if wdn=dayN then
    begin
        if wdm=dayM then
                        k:=k+1
                    else 
                    begin
                        inc(wdn); inc(wdm);
                    end;
    end else
    begin
         inc(wdn); inc(wdm);
    end;
end;
write(f2,k);
close(f1); close(f2);
END.