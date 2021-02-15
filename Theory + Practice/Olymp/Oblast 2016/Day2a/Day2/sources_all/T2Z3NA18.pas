var a:array[0..100000]of longint;
    n,k,max,max1,i,p,j:longint;
     b:array[1..100000]of boolean;
    f1,f2:text;

function hod(q:longint;var s:longint):longint;
var w,g,j,n1:longint;

begin

n1:=1;
w:=1;
j:=q;
g:=1;
b[q]:=true;

for g:=1 to k do begin
        while (j+w>=0) and (j+w<=n+1) do begin

                        if (a[j]>a[q])and( not b[j])and(a[j]>0) then begin
                                           inc(n1);
                                           q:=j;
                                           s:=j;
                                           b[j]:=true;
                                           end;

                        inc(j,w);
                        end;
        w:=w*-1;
        j:=j-w;
        end;
        hod:=n1;

end;

procedure start;
var i,j:longint;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        readln(f1,n,k);
        for i:=1 to n do read(f1,a[i]);
        a[0]:=-1;
        a[n+1]:=-1;
end;

begin
start;
max:=0;
max1:=0;
for i:=1 to n do begin
        for j:=1 to n do b[j]:=false;

               max1:=hod(i,p);
               if max<max1 then max:=max1;
               end;

writeln(f2,max);
close(f1);
close(f2);
end.
