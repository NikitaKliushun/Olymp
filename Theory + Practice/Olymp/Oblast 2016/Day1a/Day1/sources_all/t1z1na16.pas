//Атрохов А.А. Солигорск. 2 школа. 1 тур. 1 задача. Номер участника А16
program t1z1na16;
type ars=array[0..10] of string;
type arb=array[0..11,0..11] of byte;
label 1;
var s:ars;
    a:arb;
    n,c1,c2,i,j,k:byte;
    b,s1:string;
procedure smen(o:string; var h:byte);
 begin
 if o[2]='a' then h:=1;
 if o[2]='b' then h:=2;
 if o[2]='c' then h:=3;
 if o[2]='d' then h:=4;
 if o[2]='e' then h:=5;
 if o[2]='f' then h:=6;
 if o[2]='g' then h:=7;
 if o[2]='h' then h:=8;
 if o[2]='i' then h:=9;
 if o[2]='k' then h:=10;
 end;
procedure kol(a1:arb; var k1:byte);
var i,j:byte;
begin

for i:=1 to 10 do
 for j:=1 to 10 do
 if a1[i,j]=1 then k1:=k1+1;
end;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
for i:=1 to 10 do readln(s[i]);
for i:=1 to 10 do
begin
 s1:=s[i];
 for j:=1 to 10 do if s1[j]='.' then a[i,j]:=0 else a[i,j]:=1;
end;
 readln(n);
c1:=11;
c2:=11;
while not(eof) do
 begin
 a[c1,c2]:=0;
 readln(c1,b);
 smen(b,c2);

 if a[c1,c2]=0 then writeln('MISS')
 else
 {_______________________________________}
 begin
 k:=0;
 kol(a,k);
 if k=1 then begin
             writeln('GAME OVER');
             goto 1;
             end

 else if a[c1-1,c2]=0 then
       if a[c1+1,c2]=0 then
        if a[c1,c2-1]=0 then
         if a[c1,c2+1]=0 then writeln('DEAD')
                       else writeln('HIT')
         else writeln('HIT')
        else writeln('HIT')
       else writeln('HIT');
 end;
 {_________________________________________}
 end;
1:




close(output);
close(input);
end.

