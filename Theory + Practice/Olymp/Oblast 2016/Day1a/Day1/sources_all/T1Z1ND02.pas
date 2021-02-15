{Сечко Никита Дмитриевич, г. Солигорск, 9 класс, задача 1 }
Program N1;
var p:array [0..11,0..11] of byte;
    i,j,n,x,y,k:byte;
    s:string;
    c:char;
    f1,f2:text;

begin
 assign(f2,'output.txt');
 rewrite(f2);
 assign(f1,'input.txt');
 reset(f1);
 for i:=1 to 10 do begin
  readln(f1,s);
  for j:=1 to 10 do if s[j]='#' then begin
    p[i,j]:=1;
    inc(k);
   end
                                 else p[i,j]:=0;
 end;
 read(f1,n);
 for i:=1 to n do Begin
  read(f1,x,s);
  c:=s[2];
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
  if p[x,y]=0 then writeln(f2,'MISS')
              else begin
   p[x,y]:=0;
   Dec(k);
  if k=0 then begin
   writeln(f2,'GAME OVER');
   close(f2);
   close(f1);
   exit;
  end;
  if (p[x-1,y]=1)or(p[x+1,y]=1)or(p[x,y+1]=1)or(p[x,y-1]=1)then writeln(f2,'HIT')
                                                           else writeln(f2,'DEAD');
  end;
 end;
 close(f1);
 close(f2);
end.





