var f,f2:text;
    i,j,kol,n,x,y,z:longint;
    sy:string;
    fl:boolean;

    a:array[-4..15,-4..15]of char;
    sa:array[1..10]of string;
begin
 for i:=-4 to 15 do
  for j:=-4 to 15 do
  begin
   a[i,j]:='.'
  end;

 assign(f,'input.txt');
 reset(f);
 assign(f2,'output.txt');
 rewrite(f2);

 for i:=1 to 10 do
   readln(f,sa[i]);
 for i:=1 to 10 do
  for j:=1 to 10 do
   a[i,j]:=sa[i][j];
 for i:=1 to 10 do
  for j:=1 to 10 do
   if a[i,j]='#'
     then inc(kol);
 readln(f,n);
 for i:=1 to n do
  begin
   readln(f,x,sy);
   if sy=' a'
    then y:=1;
   if sy=' b'
    then y:=2;
   if sy=' c'
    then y:=3;
   if sy=' d'
    then y:=4;
   if sy=' e'
    then y:=5;
   if sy=' f'
    then y:=6;
   if sy=' g'
    then y:=7;
   if sy=' h'
    then y:=8;
   if sy=' i'
    then y:=9;
   if sy=' k'
    then y:=10;

   if a[x,y]='.'
    then writeln(f2,'MISS')
    else begin
          dec(kol);
          a[x,y]:='+';
          if kol=0
           then begin write(f2,'GAME OVER');close(f);close(f2);halt;end;

            fl:=false;

             for z:=1 to 4 do
              begin
               if a[x-z,y]='.'
                then break;
               if a[x-z,y]='#'
                then fl:=true;
              end;
             for z:=1 to 4 do
              begin
               if a[x+z,y]='.'
                then break;
               if a[x+z,y]='#'
                then fl:=true;
              end;
              for z:=1 to 4 do
              begin
               if a[x,y-z]='.'
                then break;
               if a[x,y-z]='#'
                then fl:=true;
              end;
              for z:=1 to 4 do
              begin
               if a[x,y+z]='.'
                then break;
               if a[x,y+z]='#'
                then fl:=true;
              end;
              if not fl
               then writeln(f2,'DEAD')
               else writeln(f2,'HIT');


         end;
  end;
 close(f2);
 close(f);




end.
