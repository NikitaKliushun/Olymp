{Сечко Никита Дмитриевич,г.Солигорск,9 класс,2 задача}
program N2;
var a,d:array [1..30] of byte;
    k,y,v,s,n,t,l:int64;
    i:longint;
    f1,f2:text;

procedure vri(z:byte);
var i,j:longint;
begin
if t=1 then exit;
if a[z]=0 then for i:=0 to 1 do begin
 d[z]:=i;
 if z<>l then vri(z-1)
 else begin
 if t=1 then exit;
 s:=0;
 v:=1;
 for j:=1 to 30 do begin
  s:=s+d[j]*v;
  v:=v*2;
  end;
 if s<>y then begin
  inc(n);
  write(f2,s,' ');
  if n=k then t:=1;
 end;
 end;
 end
 else if z<>l then vri(z-1);
end;

begin
 assign(f2,'output.txt');
 rewrite(f2);
 assign(f1,'input.txt');
 reset(f1);
 read(f1,k,y);
 close(f1);
 s:=y;
 while s>1 do begin
  inc(i);
  a[i]:=s mod 2;
  s:=s div 2;
 end;
 a[i+1]:=s;
 v:=1;
 for i:=1 to 30 do if a[i]=0 then v:=v*2;
 if v<k then begin
  write(f2,'-1');
  close(f2);
  exit;
 end;
 for i:=1 to 30 do d[i]:=a[i];
 i:=1;
 while a[i]=1 do inc(i);
 l:=i;
 write(f2,y,' ');
 n:=1;
 vri(30);
 close(f2);
end.


