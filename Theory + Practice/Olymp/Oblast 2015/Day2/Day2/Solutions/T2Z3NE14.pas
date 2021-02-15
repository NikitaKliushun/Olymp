//Рожнов Максим Вячеславович
program T2Z3NE14;
const
a:array[1..9,0..9]of longint=((0,0,0,0,0,0,0,0,0,0),
                              (0,1,1,2,1,2,1,1,0,1),
                              (0,1,2,2,2,2,1,1,0,2),
                              (0,1,2,2,2,2,2,1,0,2),
                              (0,1,2,2,2,2,2,1,0,2),
                              (0,1,2,2,2,2,2,1,0,2),
                              (0,1,2,2,2,2,2,1,0,2),
                              (0,1,2,2,2,2,2,1,0,2),
                              (0,1,2,2,2,2,2,1,0,2));


var
i:longint;
n,k,p:int64;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,k);
read(p);
if n=1 then begin
            if k>9 then k:=9;
            write(a[k,p]+1);
            end
       else write(0);

close(input);
close(output);
end.
