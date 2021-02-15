 {Карнаух Максим Михайлович, T1Z2NA12}
 program T1Z2NA12;
 var f1,f2:text; qwe:array[1..1000] of longint;
 n,k,b,a:integer;
 begin
 assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);

  { for i:=1 to 10 do
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
          ind3:=1;   }
 { for i:=1 to 10 do
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
          ind3:=1;   }


 { for i:=1 to 10 do
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
          ind3:=1;   }





 write(f2,'-1');





 close(f1);
 close(f2);
 end.
