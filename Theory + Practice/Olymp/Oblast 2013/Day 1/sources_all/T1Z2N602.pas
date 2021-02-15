//Сазанович Владислав Валерьевич Столбцы 10класс задача2
program uio;
const infile  = 'input.txt';
      outfile = 'output.txt';

 var a,c,kol,f:int64;
     d,k:array[1..100] of int64;


procedure indata;
begin

 assign(input,infile);
 reset(input);
 readln(a,c);
 close(input);

end;


procedure outdata;
begin

 assign(output,outfile);
 rewrite(output);
 writeln(kol);
 close(output);
 halt;

end;


procedure solve1;
 var i:int64;

begin

 kol:=0; i:=a;
  while i<=c do
   begin
    if (c mod i = 0)and(i mod a = 0) then inc(kol);
    inc(i);
   end;

 outdata;

end;


procedure prost(cis:int64; var p:boolean);
 var i:int64;

begin

 if cis=1 then begin p:=false; exit; end;
 if cis=2 then begin p:=true; exit; end;
 if cis=3 then begin p:=true; exit; end;
  i:=2; p:=true;
  while i<=round(sqrt(cis)) do
   begin
    if cis mod i = 0 then begin p:=false; exit; end;
    inc(i);
   end;

end;



procedure mnog(cis:int64);
 var i:int64;
     p:boolean;

begin

 i:=2; f:=1; d[f]:=0; k[f]:=0;
 while cis<>1 do
  begin
   if cis mod i = 0 then
    begin
     if i = d[f] then inc(k[f])
                 else begin inc(f); d[f]:=i; k[f]:=1; end;
     cis:=cis div i;
     prost(cis,p);
     if p then
      begin
       if cis = d[f] then inc(k[f])
                     else begin inc(f); d[f]:=cis; k[f]:=1; end;
       exit;
      end;
    end
     else inc(i);
  end;

end;

procedure solve2;
 var i,cis:int64;

begin

 kol:=0;
 if c mod a <>0 then outdata;

 cis:=c div a;
 mnog(cis);
 i:=1; kol:=1;
  while i<=f do
   begin
    inc(kol,kol*k[i]);
    inc(i);
   end;


 outdata;

end;


BEGIN

 indata;
 if c<=1000 then solve1
            else solve2;

END.
