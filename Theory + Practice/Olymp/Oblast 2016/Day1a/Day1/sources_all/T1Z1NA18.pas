var a:array[0..11,0..11]of byte;
    f1,f2:text;
    n:longint;

function jiv:boolean;
var i,j:byte;
begin
        jiv:=false;
        for i:=1 to 10 do
                for j:=1 to 10 do
                        if a[i,j]=1 then jiv:=true;
end;

function find(x,y:byte):boolean;
var bo:boolean;
begin
        bo:=false;
        find:=true;
        if a[x,y]=0 then writeln(f2,'MISS')
                    else begin
                         a[x,y]:=0;
                         if a[x+1,y]=1 then bo:=true;
                         if a[x-1,y]=1 then bo:=true;
                         if a[x,y+1]=1 then bo:=true;
                         if a[x,y-1]=1 then bo:=true;
                         if bo then writeln(f2,'HIT')
                               else if jiv then writeln(f2,'DEAD')
                                           else begin writeln(f2,'GAME OVER');find:=false;end;
                         end;
end;

function check(x:char):byte;
begin
     case x of
        'a': check:=1;
        'b': check:=2;
        'c': check:=3;
        'd': check:=4;
        'e': check:=5;
        'f': check:=6;
        'g': check:=7;
        'h': check:=8;
        'i': check:=9;
        'k': check:=10;
     end;
end;

procedure boi;
var i,j,b1,b:byte;
        q,qq:char;
        u:boolean;
begin
        u:=true;
        i:=0;
        while (i<6)and u do begin
                readln(f1,b1,qq,q);
                writeln(b1,q);
                b:=check(q);
                u:=find(b1,b);
                inc(i);
        end;
end;

procedure start;
var i,j:byte;
    c:char;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        for i:=1 to 10 do begin
                        for j:=1 to 10 do begin
                                read(f1,c);
                                if c='#' then a[i,j]:=1;
                        end;
                        readln(f1);
        end;
        readln(f1,n);
        boi;
end;

begin
start;
close(f1);
close(f2);
end.