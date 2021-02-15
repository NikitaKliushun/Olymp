program T1Z01NB14;
var f1,f2:text; a : array [1..12,1..12]of shortint; c:char;
    i,j:byte;
    profi,gl:byte;

procedure vozv;
var p,o:integer;
begin
 for p:=1 to 10 do
  for o:=1 to 10 do
   if a[p,o]=2 then a[p,o]:=1;
end;

function gl_prof:boolean;
var p,o,l:integer;
begin
 l:=0;
 for p:=1 to 10 do
  for o:=1 to 10 do
   if a[p,o]=-1 then inc(l);
 if l>0 then gl_prof:=false
        else gl_prof:=true;
end;


procedure prof(x,y:integer);
var p,o: integer;
begin
 for p:=-1 to 1 do
  for o:= -1 to 1 do
   if (
      ((o=0) and (p<>0))
      or
       ((p=0) and (o<>0))
       ) and (x+p>0) and (x+p<=10)
         and (y+o>0) and (y+o<=10)
          then if a[x+p,y+o]=-1
                  then begin profi:=1; exit; end
                  else if a[x+p,y+o]=1
                       then begin
                             a[x+p,y+o]:=2;
                             prof(x+p,y+o);
                            end;

end;

procedure Hit(x,y:integer);
begin
 a[x,y]:=1;
 profi:=0;
 prof(x,y);
 if profi=0
  then begin
        vozv;
        if gl_prof=true
         then begin gl:=1; writeln(f2,'GAME OVER'); end
         else writeln(f2,'DEAD');
       end
  else begin vozv;  writeln(f2,'HIT'); end;
end;

procedure game;
var n,x:integer;
    p,y:char;
begin
 readln(f1,n);
 for i:=1 to n do
  begin
   readln(f1,x,p,y);
   if y='k'
    then y:='j';
   if (a[x,ord(y)-96]=0) or
      (a[x,ord(y)-96]=1)
    then writeln(f2,'MISS');
   if a[x,ord(y)-96]=-1
    then Hit(x,ord(y)-96);
   if gl=1
    then exit;
  end;
end;

begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
for i:=1 to 10 do
 for j:=1 to 12 do
  begin
   read(f1,c);
   if (c='.')
    then a[i,j]:=0
    else if c='#'
    then a[i,j]:=-1;
  end;
game;
{for i:=1 to 10 do
 begin
 for j:=1 to 10 do
  write(a[i,j]);
 writeln;
 end;}
close(f1);
close(f2);
end.
