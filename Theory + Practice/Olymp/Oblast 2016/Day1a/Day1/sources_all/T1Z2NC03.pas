label 1;
var a:array[1..30,1..100000]of byte;k,y,sc,d,h,n,i,j,gg,i1:longint;f2,f1:text;
begin
assign(f2,'output.txt');rewrite(f2);assign(f1,'input.txt');reset(f1);
readln(f1,k,y);
i:=30;sc:=0;if (y=1073741823)and(k<>1)then begin writeln(f2,-1);goto 1;end
else if  (y=1073741823)and(k=1) then begin writeln(f2,1073741823);goto 1;end;
while y<>0 do
begin
a[i,1]:=y mod 2;
if y mod 2=1
then sc:=sc+1;
y:=y div 2;
i:=i-1;
end;

if (k>=65537)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=32769)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=16385)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=8193)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>4097)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=2049)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=1025)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=513)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=257)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=129)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=65)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=33)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=17)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=9)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=5)and(sc=14) then begin writeln(f2,-1);goto 1;end;
if (k>=3)and(sc=14) then begin writeln(f2,-1);goto 1;end;
case k of
1..2:d:=1;
3..4:d:=2;
5..8:d:=3;
9..16:d:=4;
17..32:d:=5;
33..64:d:=6;
65..128:d:=7;
129..256:d:=8;
257..512:d:=9;
513..1024:d:=10;
1025..2048:d:=11;
2049..4096:d:=12;
4097..8192:d:=13;
8193..16384:d:=14;
16385..32768:d:=15;
32769..65536:d:=16;
65537..100000:d:=17;
end;
i1:=30;
while d<>0 do
begin
case d of
1:h:=1;
2:h:=2;
3:h:=4;
4:h:=8;
5:h:=16;
6:h:=32;
7:h:=64;
8:h:=128;
9:h:=256;
10:h:=512;
11:h:=1024;
12:h:=2048;
13:h:=4096;
14:h:=8192;
15:h:=16384;
16:h:=32768;
17:h:=65536;
end;
if a[i1,1]=0
then begin
     for i:=1 to (k div h*2)+1 do
     begin
      for j:=2 to h-1 do
       a[j,i1]:=0;
      for j:=2 to h-1 do
       a[j,i1]:=1;
     end;
     d:=d-1;
     end;
i1:=i1-1;
end;
for i1:=1 to k-1 do
for i:=1 to 30 do
begin
for j:=1 to 30-i do
n:=n*2;
gg:=gg+(a[i,i1]*n);
end;writeln(f2,gg);
1:close(f1);close(f2);
end.
