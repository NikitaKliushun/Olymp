//хочу 100 баллов!!!
program t2z1nb11;
label 1,2,3;
var s1,s2:array[1..100000]of char;
    g1,g2,i,sc,min:integer;
    ch:char;
    f:text;
Begin
 assign(f,'input.txt');reset(f);
 read(f,ch);g1:=1;
 while 1<>2 do
 case ord(ch) of
  65..90,97..122:begin
                  s1[g1]:=ch;
                  inc(g1);
                  read(f,ch);
                 end;
  else goto 2;
  end;
2:readln(f);read(f,ch);g2:=1;
 while 1<>2 do
 case ord(ch) of
  65..90,97..122:begin
                  s2[g2]:=ch;
                  inc(g2);
                  read(f,ch);
                 end;
  else goto 3;
  end;
 3:close(f);
 dec(g2);
 dec(g1);
 assign(f,'output.txt');rewrite(f);
 if g1<g2
 then min:=g1
 else min:=g2;
 For i:=0 to min-1 do
  If s1[g1-i]=s2[g2-i]
   then inc(sc)
   else goto 1;
1: write(f,sc);
close(f);
End.
