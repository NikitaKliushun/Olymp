//Сазанович Владислав Валерьевич Столбцы 10класс задача3
program uio;
const infile  =  'input.txt';
      outfile =  'output.txt';

 var  a:array[1..500,1..500] of char;
      n,m:longint;
      kol:int64;


procedure indata;
 var i,j:longint;

begin

 assign(input,infile);
 reset(input);
 readln(n,m);
  for i:=1 to n do
   begin
    for j:=1 to m do
     read(a[i,j]);
    readln;
   end;
 close(input);

end;


procedure outdata;
begin

 assign(output,outfile);
 rewrite(output);
 writeln(kol);
 close(output);

end;


procedure pro(i,j,q:longint; var k:int64);
 var x1,x2,y1,y2,z1,z2:longint;
     p:boolean;

begin

 x1:=q; x2:=q; y1:=i; y2:=j; k:=0;
 while true do
  begin
   if (x1>m)and(x2>m) then exit;
   if a[y1,x1]<>a[y2,x2] then exit
    else
     begin
      p:=true;
      z1:=y1; z2:=y2;
       while y2-y1>0 do
        begin
         if a[y1,x1]<>a[y2,x2] then begin p:=false; break; end;
         inc(y1); dec(y2);
        end;
      y1:=z1; y2:=z2;
      if p then inc(k);
     end;
   inc(x1); inc(x2);

  end;

end;


procedure solve;
 var i,j,q:longint;
     k:int64;

begin

 kol:=0;
 for q:=1 to m do
  for i:=1 to n do
   for j:=i+1 to n do
    begin
     k:=0;
     if a[i,q]=a[j,q] then pro(i,j,q,k);
     inc(kol,k);
    end;



end;

BEGIN

 indata;
 solve;
 outdata;

END.
