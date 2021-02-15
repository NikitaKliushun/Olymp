//Shlyakhov Yan Antonovich, Slutchina, 9b, 1
program adasd;
var
  a:array[0..11,0..11]of smallint;
  i,j,n,x,y,score:longint;
  zz,zzz:char;

function remake(x:char):longint;
begin
  case x of
  'a': remake:=1;
  'b': remake:=2;
  'c': remake:=3;
  'd': remake:=4;
  'e': remake:=5;
  'f': remake:=6;
  'g': remake:=7;
  'h': remake:=8;
  'i': remake:=9;
  'k': remake:=10;
  end;
end;

begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
    score:=0;
    for i:=1 to 10 do begin for j:=1 to 10 do begin read(zz);if zz='#' then a[i,j]:=1 else a[i,j]:=0; if a[i,j]=1 then inc(score);end;readln;end;
    readln(n);
    for i:=1 to n do
      begin
        if score>0 then
        begin
        readln(x,zz,zzz);
        y:=remake(zzz);
        if a[x][y]=1 then
          begin
            if score-1=0 then
              begin
                writeln('GAME OVER');
                dec(score);
              end
            else
            if (a[x-1][y]>0)or(a[x+1][y]>0)or(a[x][y-1]>0)or(a[x][y+1]>0)then
              begin
                dec(score);
                writeln('HIT');
                a[x][y]:=2;
              end
              else
              begin
                dec(score);
                writeln('DEAD');
                a[x][y]:=2;
              end;
          end
        else writeln('MISS');
      end;end;
  close(input); close(output);
end.
