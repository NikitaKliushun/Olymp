//Рожнов Максим Вячеславович
program T2Z1D01;
var M,W,s,b,t,otv,pd,d:int64;
    i:longint;

begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
Readln(M,W);
for i:=1 to M do read(D);
read(s,b,t);
repeat
if t>w then t:=t-w
       else if t<b then begin
                        b:=b-t+1;
                        t:=1
                        end
                   else begin
                        b:=(b-t)+w+1;
                        t:=1;
                        end;

until t=1;
reset(input);
Read(M,W);
pd:=s;
for i:=1 to M do begin
                 read(D);
                 if D>t then if pd=b then inc(otv);
                 pd:=((D-(w-pd))mod 7);
                 if pd=0 then pd:=w;

                 end;
writeln(otv);
close(input);
close(output);
end.
