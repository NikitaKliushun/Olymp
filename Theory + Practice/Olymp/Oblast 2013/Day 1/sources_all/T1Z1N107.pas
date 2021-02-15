{Œ¨å ©«®¢ „ ­¨¨« „¬¨¥âà¨¢¨ç, £.†®¤¨­®, 8}
Program T1Z1N107;
Var s,f:string;
    i,j,d,n,k:integer;
    ch:array[1..3]of real;
    b:array[1..50]of string;
    a:array[1..50]of real;
    m:integer;
    l,c,t:real;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,t);
j:=1;
m:=1;
i:=1;
t:=t;
for i:=1 to n*2 do begin
readln(b[i]);
end;
if t>=3600 then begin
             for i:=1 to n*2 do begin
                                f:=b[i][1]+b[i][2];
                                val(f,a[i],k);
                                a[i]:=a[i]*3600;
                                end;
             for i:=1 to n+1 do
                for j:=1 to n do
                   if (a[i]+t=a[j])or(a[i]+t=60) then writeln(b[i],'-',b[j]);


             end;
if (t>60) and (t<3600) then begin
             for i:=1 to n*2 do begin
                                f:=b[i][4]+b[i][5];
                                val(f,a[i],k);
                                a[i]:=a[i]*60;
                                end;
             for i:=1 to n+1 do
                for j:=1 to n do
                   if (a[i]+t=a[j])or(a[i]+t=60) then writeln(b[i],'-',b[j]);


             end;
if (t>=1)and(t<60) then begin
             for i:=1 to n*2 do begin
                                f:=b[i][7]+b[i][8];
                                val(f,a[i],k);
                                a[i]:=a[i]*1;
                                end;

             for i:=1 to n+1 do
                for j:=1 to n do
                   if (a[i]+t=a[j])or(a[i]+t=60)then writeln(b[i],'-',b[j]);


             end;

close(input);
close(output);
end.





