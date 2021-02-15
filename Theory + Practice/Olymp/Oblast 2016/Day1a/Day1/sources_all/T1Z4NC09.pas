{Lomako Pavel Alexandrovich, Puhovichsky rayon, 11 klass, Z4}
program T1Z4NC09;
var A,B:array[1..2,1..100]of byte;
                i,j,k,n,buf:integer;
                min,kol:byte;

BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,k);
for i:=1 to n do        begin
        for j:=1 to k do read(A[i,j]);
            readln();
        end;
        for i:=1 to k do
for j:=1 to k do begin
    if A[1,j]=A[2,i] then begin B[1,A[2,i]]:=abs(j-i);B[2,A[2,i]]:=1;min:=B[1,A[2,i]];inc(kol);  end
end;
if A[1,k]=A[2,1] then min:=1
                else if A[1,1]=A[2,k] then min:=1;
if kol=0 then begin write('-1');close(output);Halt;  end;
for i:=1 to k do if B[2,i]=1
                        then if B[1,i]<min
                                then min:=B[1,i];
Write(min);
close(input);
close(output);
END.