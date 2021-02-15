program z1;
var a:array[1..10,1..10] of char;y,n:array[1..100] of integer;i,i1,c,j,j1,y1,n1:byte;t:text;s:string;e:char;
begin
assign(t,'input.txt');
reset(t);
for i:=1 to 10 do begin
for i1:=1 to 10 do begin
if (i1=10) then readln(t,a[i1,i]) else read(t,a[i1,i]);if a[i1,i]='#' then j:=j+1;
end;end;
readln(t,i1);
for i:=1 to i1 do begin read(t,y[i]);
readln(t,e);
 if e<>'k' then n[i]:=ord(e)-96 else n[i]:=107;end;



 close(t);
assign(t,'output.txt');
rewrite(t);
for i:=1 to i1 do begin
if (a[n[i],y[i]]='.') or (a[n[i],y[i]]='h') then writeln(t,'MISS');
if a[n[i],y[i]]='#' then begin
 n1:=n[i];y1:=y[i];
  while (a[n1,y1]='#') or (a[n1,y1]='h') do begin if a[n1,y1]='#' then begin c:=1;break;end;y1:=y1+1;end;
  if c<>1 then y1:=y[i];
  while (a[n1,y1]='#') or (a[n1,y1]='h') and (c<>1) do begin if a[n1,y1]='#' then begin c:=1;break;end;y1:=y1-1;end;
  if c<>1 then y1:=y[i];
  while (a[n1,y1]='#') or (a[n1,y1]='h') and (c<>1) do begin if a[n1,y1]='#' then begin c:=1;break;end;n1:=n1+1;end;
  if c<>1 then n1:=n[i];
  while (a[n1,y1]='#') or (a[n1,y1]='h') and (c<>1) do begin if a[n1,y1]='#' then begin c:=1;break;end;n1:=n1-1;end;
  if c<>1 then n1:=n[i];
  if (c=1) and (j1+1<>j)  then begin writeln(t,'HIT'); a[n[i],y[i]]:='h';j1:=j1+1; end;
  if (c<>1) and (j1+1<>j) then begin writeln(t,'DEAD');a[n[i],y[i]]:='h';j1:=j1+1; end;
  if (c=1) and (j1+1=j) then begin writeln(t,'GAME OVER');break;end;c:=0;
  end;end;

close(t);
end.

