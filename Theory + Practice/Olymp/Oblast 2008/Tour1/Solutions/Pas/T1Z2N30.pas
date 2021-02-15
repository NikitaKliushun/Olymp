{Михайловский Михаил Николаевич
Минский государственный областной лицей}
Program T1Z2N30;
var i,n,k,kol:longint;
    a:array[1..50]of longint;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  read(n,k);
  kol:=0;
  for i:=1 to n do
    begin
      read(a[i]);
      kol:=kol+a[i];
    end;
  if kol<2*k then begin writeln('0');halt;end;
  if k=1 then begin
                kol:=0;
                for i:=1 to n do
                  kol:=kol+i;
              end;
  close(input);
  close(output);
end.
