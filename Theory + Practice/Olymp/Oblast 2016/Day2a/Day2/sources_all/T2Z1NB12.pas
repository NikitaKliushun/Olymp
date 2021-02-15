//Zhodino gymnazia 1 Novodvorskii Sergey
var f1,f2:text;
        s,b,t,i,m,w,j,k:integer;
        d:array[1..10000] of integer;
        l:integer;
procedure schet;
begin
        k:=s;
        l:=0;
        for i:=1 to m do
        begin
                for j:=1 to d[i] do
                begin

                        if (j=t)and(k=b) then l:=l+1;
                        k:=k+1;
                        if k>w then k:=1;


                end;
        end;
        writeln(f2,l);
end;

procedure rd;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        readln(f1,m,w);
        for i:=1 to m do
                read(f1,d[i]);
        readln(f1);
        readln(f1,s,b,t);
         schet;
        close(f1);
        close(f2);
end;

begin
        rd;
end.
