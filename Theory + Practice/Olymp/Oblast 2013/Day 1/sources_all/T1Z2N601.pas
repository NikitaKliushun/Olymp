{Скоморощенко Александр Игоревич, Борисов, 9, 2}
program T1Z2N601;
var
  a,b,c,k:uint64;

procedure for64;
 begin
   if c mod b=0 then k:=k+1;
   b:=b+a;
 end;


begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  read(a,c);

  b:=a;
  repeat for64 until b>c;
 { for b:=a to c do
   begin
     if c mod b=0 then k:=k+1;
   end;}

  write(k);

  close(input);
  close(output);
end.
