label 1,2;
var a:array[0..13,0..13]of char;b:array[1..2,1..32]of byte;i,d,j,k,sc,x,z,i1,y:integer;y1,u:char;f1,f2:text;
begin
assign(f1,'input.txt');reset(f1);assign(f2,'output.txt');rewrite(f2);
//chitanie polya
For i:=1 to 10 do
begin
For j:=1 to 10 do
read (f1,a[i,j]);
readln(f1);
end;
for i:=11 to 12 do
for j:=1 to 10 do
begin
a[i,j]:='.';
a[j,i]:='.';
a[0,j]:='.';
a[j,0]:='.';
end;
//chitanie kol-va udarov
readln(f1,z);
//schitivanie korablei
k:=2;
 For i:=1 to 10 do
  for j:=1 to 10 do
   if a[i,j]='#'
    then if (a[i+1,j]='#')and(a[i+2,j]='#')and(a[i+3,j]='#')
          then begin b[1,k]:=i;b[2,k]:=j;b[1,k+1]:=i+1;b[1,k+2]:=i+2;b[1,k+3]:=i+3;b[2,k+1]:=j;b[2,k+2]:=j;b[2,k+3]:=j;k:=k+5;sc:=sc+1;end
          else if (a[i+1,j]='#')and(a[i+2,j]='#')and(a[i+3,j]='.')and(a[i-1,j]='.')
                then begin b[1,k]:=i;b[2,k]:=j;b[1,k+1]:=i+1;b[1,k+2]:=i+2;b[2,k+1]:=j;b[2,k+2]:=j;k:=k+4;sc:=sc+1;end
                else if (a[i+1,j]='#')and(a[i+2,j]='.')and(a[i+3,j]='.')and(a[i-1,j]='.') 
                      then begin b[1,k]:=i;b[2,k]:=j;b[1,k+1]:=i+1;b[2,k+1]:=j;k:=k+3;sc:=sc+1;end
                      else if (a[i,j+1]='#')and(a[i,j+2]='#')and(a[i,j+3]='#')
                            then begin b[1,k]:=i;b[2,k]:=j;b[1,k+1]:=i;b[1,k+2]:=i;b[1,k+3]:=i;b[2,k+1]:=j+1;b[2,k+2]:=j+2;b[2,k+3]:=j+3;k:=k+5;sc:=sc+1;end
                            else if (a[i,j+1]='#')and(a[i,j+2]='#')and(a[i,j+3]='.')and(a[i,j-1]='.')
                                  then begin b[1,k]:=i;b[2,k]:=j;b[1,k+1]:=i;b[1,k+2]:=i;b[2,k+1]:=j+1;b[2,k+2]:=j+2;k:=k+4;sc:=sc+1;end
                                  else if (a[i,j+1]='#')and(a[i,j+2]='.')and(a[i,j+3]='.')and(a[i,j-1]='.') 
                                        then begin b[1,k]:=i;b[2,k]:=j;b[1,k+1]:=i;b[2,k+1]:=j+1;k:=k+3;sc:=sc+1;end
                                        else if (a[i+1,j]='.')and(a[i,j+1]='.')and(a[i-1,j]='.')and(a[i,j-1]='.')
                                              then begin b[1,k]:=i;b[2,k]:=j;k:=k+2;sc:=sc+1;end;
//chitanie udarov
k:=k-1;
for i1:=1 to z do
begin
readln(f1,x,u,y1);
case y1 of
'a':y:=1;
'b':y:=2;
'c':y:=3;
'd':y:=4;
'e':y:=5;
'f':y:=6;
'g':y:=7;
'h':y:=8;
'i':y:=9;
'k':y:=10;
end;
if a[x,y]='.'
 then begin writeln(f2,'MISS');goto 1;end;
 d:=0;i:=0;
while d<>1 do
begin
i:=i+1;
if b[1,i]=x
then if b[2,i]=y then d:=1;
end;
           if (b[1,i-1]<>0)or(b[1,i+1]<>0)
            then begin writeln(f2,'HIT');
                       for j:=i to 30 do
                        begin
                         b[1,j]:=b[1,j+1];
                         b[2,j]:=b[2,j+1];
                        end end
            else if sc<>1
                  then begin writeln(f2,'DEAD');sc:=sc-1;
                       for j:=i to 30 do
                        begin
                         b[1,j]:=b[1,j+1];
                         b[2,j]:=b[2,j+1];
                        end end
                  else begin writeln(f2,'GAME OVER');goto 2;end;
1:end;
2:close(f1);close(f2);
end.                      