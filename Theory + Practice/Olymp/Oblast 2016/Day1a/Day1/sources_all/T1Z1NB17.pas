{z1, янович ≈вгений}
var
b:array[1..10,1..10] of char;
a:array[0..11,0..11] of byte;
i,g,k,j,k1,k2,kar,n,z:longint;
c,h:char;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
kar:=0;
for i:=1 to 10 do
 begin
 for j:=1 to 10 do
  begin
   read(b[i,j]);
   if b[i,j]='#'
    then a[i,j]:=a[i-1,j]+a[i+1,j]+a[i,j-1]+a[i,j+1]+1;
  end;
  readln;
 end;
for i:=10 downto 1 do
 for j:=10 downto 1 do
  if a[i,j]<>0
   then
    begin
     if (a[i,j-1]<>0) and (b[i,j-1]='#')
      then
      begin
      kar:=kar+1;
      for k:=1 to a[i,j]-1 do
            begin
            a[i,j-k]:=a[i,j];
            b[i,j-k]:='.';
            kar:=kar-1;
            end;
      end

      else
       begin
       kar:=kar+1;
     if (a[i-1,j]<>0) and (b[i-1,j]='#')
      then for k:=1 to a[i,j]-1 do
            begin
            a[i-k,j]:=a[i,j];
            b[i-k,j]:='.';
            kar:=kar-1;
     end;
     end;
    end;


 readln(n);
 for i:=1 to n do
  begin
  readln(k1,h,c);
  if c='k'
   then k2:=10
   else k2:=ord(c)-96;


  if a[k1,k2]<>0
   then
    begin
    if a[k1,k2]-1<>0
     then
     begin
    a[k1,k2]:=a[k1,k2]-1;
    z:=1;
    while a[k1,k2-z]<>0 do
     begin
      a[k1,k2-z]:=a[k1,k2];
      z:=z+1;
     end;
       z:=1;
    while a[k1,k2+z]<>0 do
     begin
      a[k1,k2+z]:=a[k1,k2];
      z:=z+1;
     end;
     z:=1;
    while a[k1-z,k2]<>0 do
     begin
      a[k1-z,k2]:=a[k1,k2];
      z:=z+1;
     end;
     z:=1;
    while a[k1+z,k2]<>0 do
     begin
      a[k1+z,k2]:=a[k1,k2];
      z:=z+1;
     end;
     writeln('HIT');
     end

   else
    begin
     a[k1,k2]:=a[k1,k2]-1;
     z:=1;
    while a[k1,k2-z]<>0 do
     begin
      a[k1,k2-z]:=a[k1,k2];
      z:=z+1;
     end;
       z:=1;
    while a[k1,k2+z]<>0 do
     begin
      a[k1,k2+z]:=a[k1,k2];
      z:=z+1;
     end;
     z:=1;
    while a[k1-z,k2]<>0 do
     begin
      a[k1-z,k2]:=a[k1,k2];
      z:=z+1;
     end;
     z:=1;
    while a[k1+z,k2]<>0 do
     begin
      a[k1+z,k2]:=a[k1,k2];
      z:=z+1;
     end;

     if kar-1=0
      then begin
       writeln('GAME OVER');
       halt;
       end
      else
      begin
      writeln('DEAD');
       kar:=kar-1;
      end;
   end;
  end
  else
  writeln('MISS');
end;

 close(input);
 close(output);
 end.











