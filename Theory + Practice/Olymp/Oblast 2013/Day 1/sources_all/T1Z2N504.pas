{Чечётко Александр Леонидович}
program z2;
 var f:text;
     a,c,suma,kol:longint;

 procedure indata;
  begin
   assign(f,'input.txt');
   reset(f);
   readln(f,a,c);
   close(f);
  end;

 procedure outdata;
  begin
   assign(f,'output.txt');
   rewrite(f);
   writeln(f,kol);
   close(f);
  end;

 Begin
  indata;

    suma:=a;
    while suma<=c do
     begin
       if c mod suma=0 then kol:=kol+1;
       suma:=suma+a;
     end;

  outdata;
 End.
