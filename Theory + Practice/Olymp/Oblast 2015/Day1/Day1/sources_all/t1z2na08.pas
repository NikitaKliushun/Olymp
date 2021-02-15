// shlakhov yan antonovich,sluck,8,2
program asdf;
uses math;
var
 n,m,i,r:int64;
 z,count:integer;
 a:array[0..90000] of byte;
 //-------------------
 procedure sum1;
 var k:integer;
 begin
   a[1]:=a[1]+1;
   for k:=1 to count do
     if a[k]>=10 then
       begin
         a[k+1]:=a[k+1]+(a[k]div 10);
         a[k]:=a[k]mod 10;
       end;
   if a[count+1]<>0 then inc(count);
 end;
//--------------------------
procedure sum2;
 var k:integer;
 begin
   a[1]:=a[1]+2;
   for k:=1 to count do
     if a[k]>=10 then
       begin
         a[k+1]:=a[k+1]+(a[k]div 10);
         a[k]:=a[k]mod 10;
       end;
   if a[count+1]<>0 then inc(count);
 end;
 //------------------
 begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);
   readln(m,n);
  { if m=1 then
    begin
     if m=n then write('2')
     else
     write('3');
     exit;
    end
   else
    if n=1 then
      begin
       write('3');
       exit;
      end;
    if n=2 then
      begin
       if m=2 then write('5')
       else
       write('6');
       exit;
      end;
   if m=2 then
      begin
       if n=2 then write('5')
       else
       write('6');
       exit;
      end;
   if (m=n)and(n=3)then
    begin
     write('8');
     exit;
    end;
   if n=3 then
    begin
     write('8');
     exit;
    end;
   if m=3 then
     begin
      write('9');
      exit;
     end;}
   count:=1;
   if n=m then r:=n+m-1
    else r:=n+m-abs(n-m);
   a[1]:=2; i:=2;
  // for i:=2 to n+m-1 do
   while i<=r do begin
    if i mod 2=0 then sum1{a[i]:=a[i-1]+1}
     else sum2 {a[i]:=a[i-1]+2};
      inc(i);
     end;
  { count:=6000;
   while a[count]=0 do dec(count);}
   for z:=count downto 1 do write(a[z]);
  close(input);close(output);
 end.
