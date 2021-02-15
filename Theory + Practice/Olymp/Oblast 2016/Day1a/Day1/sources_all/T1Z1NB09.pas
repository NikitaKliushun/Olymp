{Гончар Даниил Дмитриевич СШ№2 г.Солигорска}
program T1Z1NB09;
label 1;
var s:array[1..10] of string;
    a:array[1..10,1..10] of char;
    i,j,cf,cf2,n:longint;
    bkv,pr:char;
    str:string;
    f1,f2:text;
begin
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 for i:=1 to 10 do readln(f1,s[i]);

 for i:=1 to 10 do
  begin
  str:=s[i];
   for j:=1 to 10 do
    begin
    a[i,j]:=str[j];
    end;
  end;



 readln(f1,n);
 for i:=1 to n do
  begin
   readln(f1,cf,pr,bkv);
   if bkv='a' then cf2:=1;
   if bkv='b' then cf2:=2;
   if bkv='c' then cf2:=3;
   if bkv='d' then cf2:=4;
   if bkv='e' then cf2:=5;
   if bkv='f' then cf2:=6;
   if bkv='g' then cf2:=7;
   if bkv='h' then cf2:=8;
   if bkv='l' then cf2:=9;
   if bkv='k' then cf2:=10;

  if a[cf,cf2]='#' then begin writeln(f2,'GAME OVER'); goto 1; end
                   else writeln(f2,'MISS');

  { if a[cf,cf2]='#' then begin


                          if (a[cf+1,cf2]='#') or
                             (a[cf-1,cf2]='#') or
                             (a[cf,cf2+1]='#') or
                             (a[cf,cf2-1]='#') then writeln(f2,'HIT')
                                               else begin writeln(f2,'GAME OVER'); goto 1;end;

                         end
                    else writeln(f2,'MISS');}
  end;

 write(f2,'GAME OVER');
1: close(f2);
 close(f1);
end.
