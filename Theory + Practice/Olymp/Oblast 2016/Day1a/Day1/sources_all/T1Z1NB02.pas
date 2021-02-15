//Белько Руслан Александрович, г. Молодечно, 9 "А", задача N1
program T1Z1NB02;
var
  f1,f2:text;
  m,bs:array[0..11,0..11] of byte;
  c:char;
  x,y,i,j,n,k,ok,p:byte;

procedure chtenie;
begin
  for i:=1 to 10 do
        begin
        for j:=1 to 10 do
                begin
                read(f1,c);
                if c='.' then m[i,j]:=0;
                if c='#' then m[i,j]:=1;
                end;
        readln(f1);
        end;
end;

procedure bukvi(c:char; var y:byte);
begin
  case c of
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
end;

procedure korabl(x,y:byte);
begin
 if m[x+1,y]=1 then
        if m[x-1,y]=0 then
                k:=k+1;
 if m[x,y+1]=1 then
        if m[x,y-1]=0 then
                k:=k+1;
 if (m[x+1,y]=0) and (m[x-1,y]=0) then
        if (m[x,y-1]=0) and (m[x,y+1]=0) then
                k:=k+1;
end;

procedure podschet;
begin
  for i:=1 to 10 do
        for j:=1 to 10 do
                if m[i,j]=1 then
                        korabl(i,j);
end;

procedure dead;
var s1,s2,x1,y1:byte;
begin
  s1:=1; s2:=1;
  x1:=x; y1:=y;
  while m[x1+1,y1]=1 do
        begin
        s1:=s1+1;
        x1:=x1+1;
        end;
  while m[x1-1,y1]=1 do
        begin
        s1:=s1+1;
        x1:=x1-1;
        end;
  while m[x1,y1+1]=1 do
        begin
        s1:=s1+1;
        y1:=y1+1;
        end;
  while m[x1,y1-1]=1 do
        begin
        s1:=s1+1;
        y1:=y1-1;
        end;
  x1:=x; y1:=y;
  while bs[x1+1,y1]=1 do
        begin
        s2:=s2+1;
        x1:=x1+1;
        end;
  while bs[x1-1,y1]=1 do
        begin
        s2:=s2+1;
        x1:=x1-1;
        end;
  while bs[x1,y1+1]=1 do
        begin
        s2:=s2+1;
        y1:=y1+1;
        end;
  while bs[x1,y1-1]=1 do
        begin
        s2:=s2+1;
        y1:=y1-1;
        end;
  if s1=s2 then
        begin
        ok:=1;
        k:=k-1;
        end;
end;

procedure analiz;
begin
  ok:=0;
  dead;
  if ok=1 then
        if k>0 then writeln(f2,'DEAD')
               else
                begin
                writeln(f2,'GAME OVER');
                p:=1;
                end
               else writeln(f2,'HIT');
  if p=1 then exit;
end;

begin
  assign(f1,'input.txt');
  assign(f2,'output.txt');
  reset(f1);
  rewrite(f2);
  chtenie;
  readln(f1,n);
  p:=0;

  podschet;

  for i:=1 to n do
        begin
        read(f1,x,c);
        readln(f1,c);
        bukvi(c,y);
        if bs[x,y]=0 then
                begin
                bs[x,y]:=1;
                if m[x,y]=0 then
                        writeln(f2,'MISS');
                if m[x,y]=1 then analiz;
                if p=1 then break;
                end;
        end;

  close(f1);
  close(f2);
end.