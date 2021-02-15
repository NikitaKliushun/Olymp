{Михайлов Даниил Дмитриевич, Жодино, 10 класс, 2 задача}
var A,B:int64;
    f1,f2:text;
procedure chit;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        read(f1,A,B);
end;
procedure endi;
begin
        close(f1);
        close(f2);
end;
procedure poisk;
var sum,sumk,i:int64;
    eo:boolean;
begin
if (A<>B)then if(A<B) then begin B:=A;A:=B+1;end
       else begin A:=B;B:=A+1;end;
sumk:=A+B;
i:=1;
sum:=0;
eo:=true;
while eo do begin
        if (sumk div i)-i-1<=0 then eo:=false;
        sum:=sum+(sumk div i)-(i-1);
        inc(i);
        end;
writeln(f2,sum);
end;
begin
chit;
poisk;
endi;
end.

