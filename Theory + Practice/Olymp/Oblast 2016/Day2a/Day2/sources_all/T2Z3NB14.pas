program T2Z3NB14;
var f1,f2:text; ans:int64; n,k,o,i:longint; a:array[1..1000001] of longint;

procedure po(min,j,an:longint);
var i,p:longint;
begin
 if j<>n+1
  then for i:=j to n do begin
                         writeln(an);
                         if a[i]>min
                          then for p:=0 to 1 do
                                if p=0 then po(a[i],i+1,an+1);

                        end;
 if an > ans then ans:=an;


end;



BEGIN
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n,k);
for o:=1 to n do
 read(f1,a[o]);
close(f1);
ans:=1;
for o:=1 to n do
po(a[o],o,1);
writeln(f2,ans);
close(f2);
END.