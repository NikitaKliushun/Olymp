//Сазанович Владислав Валерьевич Столбцы 10класс 3задача
program uio;
const infile  =  'input.txt';
      outfile =  'output.txt';

 var f,t:array[1..200000] of longint;
     n,m:longint;



procedure indata;
 var i:longint;

begin

 assign(input,infile);
 reset(input);
 readln(n,m);
  for i:=1 to m do
   readln(f[i],t[i]);
 close(input);

end;


procedure outdata;
 var c,kol,p:longint;

begin

 assign(output,outfile);
 rewrite(output);
 if n=1 then writeln(0);
 if n=2 then writeln(1-m);
 if n=3 then writeln(2-m);
 if (n=4)or(n=5) then writeln(4-m);
 if n>5 then
  begin
   p:=n mod 2;
   n:=n - (n mod 2);
   kol:=n+( (n div 2) -2 );
   c:=2;
    while c<=n div 2 do
     begin
      inc(kol,( (n div 2)-c) * 2 );
      inc(c,2)
     end;

    writeln(kol-m+p);

  end;
 close(output);

end;

BEGIN

 indata;
 outdata;

END.
