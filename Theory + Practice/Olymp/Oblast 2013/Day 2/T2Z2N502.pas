program T2Z2N502;
var sred:comp;
    n,k,xxx,antisol,i,xxxx,antisol2,n1:integer;
    d:array [1..100000] of longint;
    r:array [1..100000] of longint;
    f1,f2:text;

begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
 antisol:=0;
 antisol2:=0;


 read(f1,n); readln(f1,k);
 for i:=1 to n do read(f1,D[i]);


 if k=n then begin writeln(f2,n); for i:=1 to n-1 do write(f2,i,' '); write(f2,n); end;


 if k=n-1 then begin
   for i:=1 to n do sred:=sred+d[i]/n;
   for i:=1 to n do r[i]:=d[i]-round(sred);
   for i:=1 to n do r[i]:=abs(r[i]);
   for i:=1 to n do if r[i]>antisol then begin antisol:=r[i]; xxx:=i; end;
   writeln(f2,k); for i:=1 to n-1 do if i<>xxx then write(f2,i,' '); if n<>xxx then write(f2,n);
               end;

 n1:=n-1;
 //IT DOESNT WORK! FIX IT!
 if k=n-2 then begin
   for i:=1 to n do sred:=sred+d[i]/n;
   for i:=1 to n do r[i]:=d[i]-round(sred);
   for i:=1 to n do r[i]:=abs(r[i]);
   for i:=1 to n do if r[i]>antisol then begin antisol:=r[i]; xxx:=i; end;
   for i:=1 to n do if (r[i]>antisol2) and (antisol2<>antisol) then
    begin
     antisol2:=r[i];
     xxxx:=i;
    end;
   writeln(f2,k);
   for i:=1 to n1 do if ((i<>xxx) and (i<>xxxx)) then
                        write(f2,i,' ');
                        if (n<>xxx) and (n<>xxxx) then write(f2,n);
               end;

close(f1);
close(f2);
end.
