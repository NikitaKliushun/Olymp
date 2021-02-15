{g.Molodechno,gimnasia-college iscusstv,Bozhko Nikita,z}
program z1;
label a121; 
var a:array[1..12,1..12]of char;
a1,a2:array[1..10000] of integer;    
i,j,k,n,x,y,z,proverka:integer;
y1:string;
f1,f2:text;
 begin
 assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 
 for i:=2 to 11 do 
 begin
 readln(f1);
  for j:=2 to 11 do 
   begin
   read(f1,a[i,j]);
   end;
   end;
   
readln(f1,n);

for i:=1 to n do 
 begin
 read(f1,x,y);
 a1[i]:=x+1;
  begin 
  if y1=' a' then a2[i]:=2;
  if y1=' b' then a2[i]:=3;
  if y1=' c' then a2[i]:=4;
  if y1=' d' then a2[i]:=5;
  if y1=' e' then a2[i]:=6;
  if y1=' f' then a2[i]:=7;
  if y1=' g' then a2[i]:=8;
  if y1=' h' then a2[i]:=9;
  if y1=' i' then a2[i]:=10;
  if y1=' k' then a2[i]:=11;
  end;
  end;
  
for i:=1 to n do
 begin 
 x:=a1[i];
 y:=a2[i];
  if a[x,y]='#' then k:=k+1;
  if a[x,y]='#' then if ((a[x+1,y]='.')or(a[x+1,y]='0')or(a[x+1,y]=' ')) then begin  k:=k+1;a[x,y]:='0' end; 
  if a[x,y]='#' then if ((a[x-1,y]='.')or(a[x-1,y]='0')or(a[x-1,y]=' ')) then k:=k+1;
  if a[x,y]='#' then if ((a[x,y+1]='.')or(a[x,y+1]='0')or(a[x,y+1]=' ')) then k:=k+1;
  if a[x,y]='#' then if ((a[x,y-1]='.')or(a[x,y-1]='0')or(a[x,y-1]=' ')) then k:=k+1;
  if k<5 then write(f2,'HIT')
         else if k=5 then write(f2,'DEAD');
  if a[x,y]='.' then write(f2,'MISS');
  for z:=2 to 11 do 
  begin
  for j:=2 to 11 do 
  begin 
  if (a[i,j]='.') or (a[i,j]='0') or (a[i,j]=' ') then proverka:=proverka+1;
  end;
  end;
  if proverka=144 then goto a121;
  end;
  a121:
  write(f2,'GAME OVER');
  close (f1);
  close (f2);
  end.