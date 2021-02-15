type maze=array[1..100000]of byte;
var a:maze;
    f1,f2:text;
    n,k:longint;





procedure start;
var i,j:longint;
begin
        assign(f1,'input.txt');
        assign(f2,'output.txt');
        reset(f1);
        rewrite(f2);
        readln(f1,n);
        for i:=1 to n do read(f1,a[i]);

end;

procedure poisk;
var i,j,q1,c,l,l1,l2,n1,max,e:longint;
    b:boolean;
begin
max:=0;
        for i:=1 to n do begin
                b:=false;
                for j:=i+1 to n-1 do
                        if a[i]=a[j] then begin b:=true;e:=i;break;end;
                if b then break;
                end;
        i:=e;
        for j:=e to n do begin
                dec(n);
                n1:=n;
                if a[i]=a[j] then begin
                                        for l:=j to n1 do
                                                if a[l]<>a[i] then
                                                        for l1:=1 to n1 do
                                                                if a[l1]=a[l] then
                                                                        for l2:=l1 to n1 do begin
                                                                                a[l2]:=a[l2+1];
                                                                                dec(n1);
                                                                                end;
                                   if max<n1 then max:=n1;
                                   end;
                end;

writeln(f2,max+1);
end;


begin
start;
poisk;
close(f1);
close(f2);
end.

