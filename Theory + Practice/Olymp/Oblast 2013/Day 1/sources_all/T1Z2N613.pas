{Шкет Никита Николаевич, г.Молодечно, 10 класс, 2}
program T1Z2N613;
var a,b,c:int64;
    d:cardinal;
    e:integer;
    x:longint;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

  read(a,c);                                                    {
  e:=0;
  if a<4000000000 then d:=a else
   while a>=4000000000 do begin
    a:=a-4000000000;
    e:=e+1;
                        end;

  while ((d+4000000000*e)<=c) or ((d+4000000000*e)<=a) do begin
   if ((d+4000000000*e) mod a=0) and (c mod (d+4000000000*e)=0) then x:=x+1;
   d:=d+1;
   if d=4000000000 then begin
    d:=0;
    e:=e+1;
                        end;
                                                          end;


                                                               }
   for d:=a to c do
    if (d mod a=0) and (c mod d=0) then x:=x+1;
   write(x);

close(input);
close(output);
end.