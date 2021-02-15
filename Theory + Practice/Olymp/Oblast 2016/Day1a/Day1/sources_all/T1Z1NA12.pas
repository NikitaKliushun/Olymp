 {Карнаух Максим Михайлович, T1Z1NA12}
 program T1Z1NA12;
 var f1,f2:text; a:array[0..11,0..11] of string;
 s1:array[1..10] of string;
 i,j,i1,z,j1,ind,n,ind3,ind2,i2,j2:byte; s:string;
 begin
 assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);

 for i:=1 to 10 do
  readln(f1,s1[i]);


 for i:=1 to 10 do
  for j:=1 to 10 do
  a[i,j]:=s1[i][j];

 read(f1,n);

 ind2:=0;
 ind:=0;

 for z:=1 to n do
  begin
  ind2:=0;
  read(f1,i1,s);
  if s=' a' then j1:=1;
  if s=' b' then j1:=2;
  if s=' c' then j1:=3;
  if s=' d' then j1:=4;
  if s=' e' then j1:=5;
  if s=' f' then j1:=6;
  if s=' g' then j1:=7;
  if s=' h' then j1:=8;
  if s=' i' then j1:=9;
  if s=' k' then j1:=10;

  ind:=0;
  i2:=i1; j2:=j1;
  if a[i1,j1]='#' then
   begin
   a[i1,j1]:='-';
   if a[i1+1,j1]='#' then ind:=1;
   if a[i1-1,j1]='#' then ind:=1;
   if a[i1,j1+1]='#' then ind:=1;
   if a[i1,j1-1]='#' then ind:=1;


   if ind=1 then writeln(f2,'HIT') else
     begin
      if a[i1+1,j1]='-' then
        while a[i1,j1]='-' do
         begin
         i1:=i1+1;
         if a[i1,j1]='#' then
          begin
          writeln(f2,'HIT');
          ind:=1;
          ind3:=1;
          end;
         end;

      if (a[i1-1,j1]='-') and (ind3=0) then
        while a[i1,j1]='-' do
         begin
         i1:=i1-1;
         if a[i1,j1]='#' then
          begin
          writeln(f2,'HIT');
          ind:=1;
          ind3:=1;
          end;
         end;

      if (a[i1,j1+1]='-') and (ind3=0) then
        while a[i1,j1]='-' do
         begin
         j1:=j1+1;
         if a[i1,j1]='#' then
          begin
          writeln(f2,'HIT');
          ind:=1;
          ind3:=1;
          end;
         end;



      if (a[i1,j1-1]='-') and (ind3=0) then
        while a[i1,j1]='-' do
         begin
         j1:=j1-1;
         if a[i1,j1]='#' then
          begin
          writeln(f2,'HIT');
          ind:=1;
          end;
         end;

     end;

    for i:=1 to 10 do
   begin
   if ind2=1 then break;
  for j:=1 to 10 do
    if a[i,j]='#' then
    begin
    ind2:=1;
    break;
    end;
   end;
  if ind2=0 then break;


    if ind=0 then writeln(f2,'DEAD');
    ind:=0;

   end;

  if a[i2,j2]='.' then writeln(f2,'MISS');

  for i:=1 to 10 do
   begin
   if ind2=1 then break;
  for j:=1 to 10 do
    if a[i,j]='#' then
    begin
    ind2:=1;
    break;
    end;
   end;
  if ind2=0 then break;



  end;

 if ind2=0 then writeln(f2,'GAME OVER');



 close(f1);
 close(f2);
 end.




