var f1,f2:text;
    h,p,mes:array[1..3000]of longint;
    m,n,i,o:integer;

function rec(a,o,s:longint):boolean;
var i,j,a1,o1,s1:longint;
    b:boolean;
begin
b:=false;



while not b do begin
        if s=m then begin
                rec:=true;
                break;
                end;

        if (a=n) and (s<m) then begin
                rec:=false;

                break;
                end;
        inc(a);
        if o<h[s]+p[a] then begin
                inc(s);
                mes[a]:=1;
                b:=rec(a,h[s]+p[a],s);
                if not b then begin mes[a]:=0; dec(s);end;
                for i:=1 to n do if mes[i]=1 then inc(o);
                end;

        end;
//if rec then writeln(f2,a);
end;


procedure start;
var i,j:longint;
begin
        assign(f1,'input.txt');reset(f1);
        assign(f2,'output.txt');rewrite(f2);
        readln(f1,m,n);
        for i:=1 to m do read(f1,h[i]);
        readln(f1);
        for i:=1 to n do read(f1,p[i]);
        close(f1);
end;

begin
start;
writeln(f2,-1);

close(f2);
end.

