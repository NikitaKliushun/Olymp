//Zhodino gymnazia 1 Novodvorskii Sergei
var     f1,f2:text;
        i,m1,m2,n,m:integer;
        a:array[1..10000] of integer;


procedure psk;
begin
       for i:=1 to n do
                if a[i]=1 then m1:=m1+1
                        else m2:=m2+1;
       if m1>m2 then writeln(f2,'1')
                else
                writeln(f2,'2');
end;
procedure rd;
begin
        assign(f1,'input.txt');
        reset(f1);
        assign(f2,'output.txt');
        rewrite(f2);
        readln(f1,n);
        for i:=1 to n do
                read(f1,a[i]);
        psk;
        close(f1);
        close(f2);
end;

begin
        rd;
end.
