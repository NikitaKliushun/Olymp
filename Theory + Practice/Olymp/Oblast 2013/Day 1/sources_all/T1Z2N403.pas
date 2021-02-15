{Shmatkov Dmitry Vladimirovich, 11 klass, Slutsk}
program z;
 var
  i,j:longint;
  k,a,c,b,t:longint;
 begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  read(a,c);

  if a=c
   then
    begin
     write('1');
     halt;
    end;

  if c mod a<>0
   then
    begin
     write('0');
     halt;
    end;

  b:=c div a;

  j:=trunc(sqrt(b));
  k:=0;
  for i:=2 to j do
   begin
    if b mod i=0
     then
      begin
       inc(k,2);
       t:=j;
       if (i=j)and(t*t=b) then dec(k);
      end;
   end;

  k:=k+2;

  write(k);

  close(input);
  close(output);
end.
