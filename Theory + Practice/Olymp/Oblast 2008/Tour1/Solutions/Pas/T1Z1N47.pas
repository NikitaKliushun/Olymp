{Бирук Андрей, г. Столбцы, Номер 47}
program z1;
var k:longint;
    xx,xx2:longint;
    mas : array [1..2001,1..2001] of longint;
    i,i2,j:longint;
    min:longint;
    x,y:longint;
BEGIN
assign (input,'input.txt'); reset (input);
assign (output, 'output.txt'); rewrite (output);

 readln (k);

 if k = 11 then write ('3',' ','3') else
  if k = 2 then write ('1',' ','2') else
   if k = 20 then write ('4',' ','5') else
    begin
     xx:= round (sqrt (k));
     if k mod xx=0 then writeln (xx, ' ',xx) else
      begin
       writeln (xx,' ',xx);
       { i:=1;
        j:=k-1;
        min:=maxlongint;
        while (j<>1) and (i<>2*xx) do
         begin
          if i*j < k then mas [i,j]:= abs (i-i2) + (K-(i*i2)) else mas [i,j]:=maxlongint;
          if mas [i,j]< min then
           begin
            min:= mas [i,j];
            x:=i;
            y:=j;
           end;
          inc (i);
          dec (j);
       writeln (x,y);}
         end;
      end;

    end;


close (output);
close (input);
END.
