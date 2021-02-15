{Гайдук Илья Олегович,г. Борисов,11"А", Задача 1}
CONST s=10;
TYPE mas1=array[1..10,1..10] of char;
     mas2=array[1..2,1..100] of byte; 
VAR a1:mas1;
    a2:mas2;
    f1,f2:text;
    i,j,cx,n,x,k,y:integer;
    ch:char;
procedure kord(ch:char; var cx:integer);
begin
    if ch='a' then cx:=1;
    if ch='b' then cx:=2;
    if ch='c' then cx:=3;
    if ch='d' then cx:=4;
    if ch='e' then cx:=5;
    if ch='f' then cx:=6;
    if ch='g' then cx:=7;
    if ch='h' then cx:=8;
    if ch='i' then cx:=9;
    if ch='k' then cx:=10;
end;
function gg:boolean;
var i,j:integer;
begin
    for i:=1 to s do
        for j:=1 to s do
            if a1[i,j]='#' then 
            begin
                gg:=true;
                exit
            end
                          else gg:=false;
end;
function founds(x,y:byte):boolean;
begin
    if (y=s) and (x=s) then
    begin
      if a1[x,y-1]='#' then founds:=true;
      if a1[x-1,y]='#' then founds:=true;
      exit;
    end;
    if (y=1) and (x=1) then
    begin
      if a1[x,y+1]='#' then founds:=true;
      if a1[x+1,y]='#' then founds:=true;
      exit;
    end;
    if (y=s) and (x=1) then
    begin
      if a1[x,y-1]='#' then founds:=true;
      if a1[x+1,y]='#' then founds:=true;
      exit;
    end;
    if (y=1) and (x=s) then
    begin
      if a1[x,y+1]='#' then founds:=true;
      if a1[x-1,y]='#' then founds:=true;
      exit;
    end;
    if y=s then
    begin
      if a1[x,y-1]='#' then founds:=true;
      if a1[x-1,y]='#' then founds:=true;
      if a1[x+1,y]='#' then founds:=true;
      exit;
    end;
    if x=s then
    begin
      if a1[x,y-1]='#' then founds:=true;
      if a1[x-1,y]='#' then founds:=true;
      if a1[x,y+1]='#' then founds:=true;
      exit;
    end;
    if x=1 then
    begin
      if a1[x,y-1]='#' then founds:=true;
      if a1[x+1,y]='#' then founds:=true;
      if a1[x,y+1]='#' then founds:=true;
      exit;
    end;
    if y=1 then
    begin
      if a1[x+1,y]='#' then founds:=true;
      if a1[x-1,y]='#' then founds:=true;
      if a1[x,y+1]='#' then founds:=true;
      exit;
    end;
      if a1[x,y-1]='#' then founds:=true;
      if a1[x,y+1]='#' then founds:=true;
      if a1[x+1,y]='#' then founds:=true;
      if a1[x-1,y]='#' then founds:=true; 
end;
BEGIN
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
for i:=1 to s do
begin
    for j:=1 to s do
    begin
        read(f1,ch);
        a1[i,j]:=ch;        
    end;
    readln(f1);
end;
read(f1,n);
readln(f1);
j:=0;
for j:=1 to n do
begin
    read(f1,cx);
    a2[1,j]:=cx;
    read(f1,ch);
    read(f1,ch);
    kord(ch,cx);
    a2[2,j]:=cx;
    readln(f1);
end;
j:=1;
while (j<=n) and (gg) do
begin
    x:=a2[1,j];
    y:=a2[2,j];
    if a1[x,y]='#' 
    then
    begin
        a1[x,y]:='.';
        if gg 
        then
            if not founds(x,y) 
            then
                begin
                  write(f2,'DEAD');
                  writeln(f2);
                end
            else 
                begin
                  write(f2,'HIT');
                  writeln(f2);
                end
        else
        begin
            write(f2,'GAME OVER');
            writeln(f2);
        end;
    end
    else
    begin
        write(f2,'MISS');
        writeln(f2);
    end;
    inc(j);
end;
close(f1); close(f2);
END.