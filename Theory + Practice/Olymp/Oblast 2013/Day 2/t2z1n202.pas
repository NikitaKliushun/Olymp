{Ефимович Максим Геннадьевич, г.Солигорск, 9"Б" класс, №1}
var n,i,k,kol,j:integer;
   a,p:array[1..100] of integer;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(n,k);
kol:=0;
for i:=1 to n do
    begin
    readln(a[i],p[i]);
    kol:=kol+a[i];
    end;
if kol=k then begin
              writeln('0');
              halt;
              end;
writeln(abs(kol-k));
if kol>k then begin
for j:=1 to 10 do
for i:=1 to n do
  begin
  if (kol<>k) and (a[i]>0) then begin
                                dec(a[i]);
                                dec(kol);
                                writeln(i*-1);
                                end;

  end;
  end;
if k>kol then begin
              for i:=1 to n do
                begin
                while (a[i]<p[i]) and (kol<>k) do
                   begin
                   inc(a[i]);
                   inc(kol);
                   writeln(i);
                   end;
                end;
              end;
close(input);
close(output);
end.