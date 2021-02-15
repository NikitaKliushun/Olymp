{Важник Артем Анреевич, г. Молодечно, 8 "А", задача №1}
program T2Z2NC08;
var f1, f2:text; d, d1, k, k2:longint; m, o:byte;
procedure kub(d:longint; var k:longint; var o:byte);
var i:longint; m:byte;
begin
for i:=1 to trunc(sqrt(d)) do
 if i*i*i=d then begin
                 m:=1;
                 k:=k+1;
                 o:=1;
                 break;
                 end;
 if m<>1 then k:=k+1;
end;
begin
assign (f1, 'input.txt');
assign (f2, 'output.txt');
reset (f1);
rewrite (f2);
read (f1, d1);
k:=0; m:=0; d:=d1;
while m=0 do
  begin
  kub(d, k, o);
  if o=1 then begin
              write (f2, k);
              m:=1;
              end
  else d:=d1+d1*k;
  end;
close (f1);
close (f2);
end.
