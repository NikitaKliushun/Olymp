{Михайлов Даниил Дмитриевич, Жодино, 10 класс, 3 задача}
var f1,f2:text;
    a,k:int64;
    n,n1,n2:int64;
    i:longint;
    u1,u2,j:longint;
    a1:array[1..10000]of byte;
procedure chit;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
end;
procedure endi;
begin
        close(f1);
        close(f2);
end;
begin
chit;
readln(f1);
u2:=-1;
n:=0;
while not eoln(f1) do begin
read(f1,a);
u1:=1;
u2:=u2*-1;
if u2=1 then u1:=1
        else u1:=0;
for i:=1 to a do begin
        n:=(n*2)+u1;
        end;
end;
readln(f1);
u2:=-1;
n1:=0;
while not eoln(f1) do begin
        read(f1,a);
        u1:=1;
        u2:=u2*-1;
        if u2=1 then u1:=1
                else u1:=0;
        for i:=1 to a do begin
                n1:=(n1*2)+u1;
        end;
end;
n2:=n xor n1;
k:=1;
i:=1;
while n2>0 do begin
      a1[i]:=n2 mod 2;
      n2:=n2 div 2;
      inc(i);
      end;
for j:=i-2 downto 1 do begin
        if a1[j]=a1[j+1] then k:=k+1
                       else begin write(f2,k,' ');k:=1;end;
                       end;
write(f2,k);
endi;
end.
