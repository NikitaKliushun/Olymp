//Ефимович Максим Геннадьевич, город Солигорск, 11 класс, №3
var n,k,ans,err:longint;
    s:string;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(n,k);
ans:=1;
readln(s);
val(s,n,err);
if n=1 then begin
            if k>=2 then inc(ans);
            end;
if n=2 then begin
            if k>=2 then inc(ans);
            if k>=3 then inc(ans);
            end;
if n=3 then begin
            if k>=2 then inc(ans,2);
            end;
if n=4 then begin
            if k>=2 then inc(ans);
            if k>=3 then inc(ans);
            end;
if n=5 then begin
            if k>=2 then inc(ans,2);
            end;
if n=6 then begin
            if k>=2 then inc(ans);
            if k>=4 then inc(ans);
            end;
if n=7 then begin
            if k>=2 then inc(ans);
            end;
if n=9 then begin
            if k>=2 then inc(ans);
            if k>=4 then inc(ans);
            end;
write(ans);
close(input);
close(output);
end.