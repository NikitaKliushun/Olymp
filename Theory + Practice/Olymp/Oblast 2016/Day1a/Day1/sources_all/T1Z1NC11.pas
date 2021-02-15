{Северин Клим Михайлович,г.Вилейка,№1}
program ghi;
var f1,f2:text;
a:array[1..10,1..10]of char;
q,e:array[1..100]of byte;
w:array[1..100]of string;
i,j,n,k,t,s,s1,s2:integer;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
for i:=1 to 10 do begin
        for j:=1 to 9 do
                read(f1,a[i,j]);
        readln(f1,a[i,10]);
        end;
readln(f1,n);
for i:=1 to n do begin
        read(f1,q[i]);
        readln(f1,w[i]);
        end;

         for i:=1 to n do
                case w[i] of
                ' a':e[i]:=1;
                ' b':e[i]:=2;
                ' c':e[i]:=3;
                ' d':e[i]:=4;
                ' e':e[i]:=5;
                ' f':e[i]:=6;
                ' g':e[i]:=7;
                ' h':e[i]:=8;
                ' i':e[i]:=9;
                ' k':e[i]:=10; end;
                for j:=1 to 10 do
          for t:=1 to 10 do
            if a[j,t]='#'then  s:=s+1;
for i:=1 to n do begin
        if s<>0 then begin
        s1:=q[i];
        s2:=e[i];
        if a[s1,s2]='#' then begin
                  s:=s-1;
                if s1+1<=10 then  if a[s1+1,s2]='#' then begin if s<>0 then writeln(f2,'HIT'); k:=1; end;
                if s2+1<=10 then if (a[s1,s2+1]='#') and (k<>1) then begin if s<>0 then writeln(f2,'HIT'); k:=1; end;
                if s2-1>0 then if (a[s1,s2-1]='#') and (k<>1) then begin if s<>0 then writeln(f2,'HIT'); k:=1; end;
                if s1-1>0 then if (a[s1-1,s2]='#') and (k<>1) then begin if s<>0 then writeln(f2,'HIT'); k:=1; end;
                if (k<>1) and (s<>0) then  writeln(f2,'DEAD');
                a[q[i],e[i]]:='t';
                k:=0;
                if s=0 then writeln(f2,'GAME OVER')
                end  else writeln(f2,'MISS');
        end;end;
        close(f1);
        close(f2);
        end.
