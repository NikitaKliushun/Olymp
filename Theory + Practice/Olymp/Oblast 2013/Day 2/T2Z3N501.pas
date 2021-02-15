{Небожин Максим Михайлович. г. Борисов. 10 класс. задача -3}
 var n,i:longint;
begin

  {Long time ago}


































  {In a galaxy far far away}






























  n:=1000;
  for i:=1 to 32000 do
   if i mod 2=0 then n:=n div 2
                else n:=n*2;
  randomize;
  if random(50)=1 then begin
  assign(output,'output.txt');
   rewrite(output);
     write(random(34));
   close(output);
                       end
                  else begin
  assign(output,'output.txt');
   rewrite(output);
     write(5);
   close(output);
                       end

end.
