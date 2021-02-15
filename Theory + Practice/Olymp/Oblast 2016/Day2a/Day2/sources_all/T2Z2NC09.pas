{Lomako Pavel Alexandrovich, Puhovichsky rayon, 11 klass, Z2}
program T2Z2NC09;
var M,N,i,ind1,ind2,ind3:smallint;
        B:array[0..3000]of longint;
        H:array[0..3000]of longint;
        P:array[0..3000]of int64;min1,min2,min3:int64;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
ind1:=0;
ind2:=0;
ind3:=0;
Readln(M,N);
for i:=1 to M do Read(H[i]);
readln();
for i:=1 to N do read(B[i]);
min1:=B[1]+H[1];ind1:=1;
for i:=2 to n do
        if B[i]+H[1]<min1 then begin min1:=B[i]+H[1];ind1:=i;end;
P[ind1]:=min1;
min2:=B[1]+H[2];
for i:=2 to n do
        if B[i]+H[2]<min2 then begin min2:=B[i]+H[2];ind2:=i;end;
P[ind2]:=min2;
min3:=B[1]+H[3];
for i:=2 to N do
        if B[i]+H[3]<min3 then begin min3:=B[i]+H[3];ind3:=i; end;
P[ind3]:=min3;
if (P[ind1]<P[ind2])and(P[ind2]<P[ind3]) then Write(ind1,' ',ind2,' ',ind3)
        else if (P[ind1]<P[ind3])and(P[ind3]<P[ind2]) then Write(ind1,' ',ind3,' ',ind2)
                else if (P[ind2]<P[ind1])and(P[ind1]<P[ind3]) then write(ind2,' ',ind1,' ',ind3)
                        else if (P[ind2]<P[ind3])and(P[ind3]<P[ind1]) then Write(ind2,' ',ind3,' ',ind1)
                                else if (P[ind3]<P[ind1])and(P[ind1]<P[ind2]) then write(ind3,' ',ind1,' ',ind2)
                                        else if (P[ind3]<P[ind2])and(P[ind2]<P[ind1]) then write(ind3,' ',ind2,' ',ind1)
                                                else write('-1');

close(output);
close(input);
END.
