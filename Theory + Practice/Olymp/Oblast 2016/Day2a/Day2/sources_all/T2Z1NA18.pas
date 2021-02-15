var god,mes,ned:array[1..100000]of longint;
    f1,f2,t1:text;
procedure start;
var i,j,n,m,w,num,s,t,b,res:longint;
begin
        assign(f1,'input.txt');reset(f1);
        assign(t1,'input.txt');reset(t1);
        assign(f2,'output.txt');rewrite(f2);

        readln(f1,m,w);
        readln(t1);
        readln(t1);
        readln(t1,s,t,b);
        num:=0;
        res:=0;
        for i:=1 to m do begin
                read(f1,mes[i]);
                for j:=1 to mes[i] do begin
                        inc(num);
                        god[num]:=j;
                        ned[num]:=(num+s-1) mod w;
                        if ned[num]=0 then ned[num]:=w;
                        if (ned[num]=t)and(god[num]=b)then inc(res);
                        end;
                end;
        writeln(f2,res);
        close(f1);
        close(f2);
        close(t1);
end;
begin
start;
end.




