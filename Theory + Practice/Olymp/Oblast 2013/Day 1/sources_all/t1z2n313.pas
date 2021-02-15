{Tuleyko Maksim, Molodechno, 9 klass}
program zzz;
  var  a,b,k,i:int64;
begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  read(a,b);

  k:=0;
  if a=1 then k:=b
         else
         begin
         i:=1;
         while i*a<=b do
           begin
           if b mod (i*a)=0 then k:=k+1;
           i:=i+1;
           end;
         end;
  write(k);

  close(input);
  close(output);
end.
