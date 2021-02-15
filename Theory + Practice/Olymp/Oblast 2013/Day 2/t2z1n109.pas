//Головащенко, МГОЛ ЗД_1
var
  k,n,kol,free,i,j:longint;
  a,p:array[1..1000] of longint;
  otvm:array [1..10000] of longint;
begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  readln(n,k);
  kol:= 0; free:= 1;
  for i:= 1 to n do begin
    read(a[i], p[i]);
    inc(kol,a[i])
  end;

  if kol=k then begin
    writeln(0);
    close(input);
    close(output);
    exit;
  end;

  if kol > k then
    for i:= 1 to n do
      while a[i]>0 do begin
        dec(kol);
        otvm[free]:=-i;
        inc(free);
        dec(a[i]);
        //dec(kol);
        if k=kol then begin
          writeln(free-1);
          for j:= 1 to free-1 do
            writeln(otvm[j]);
          close(input);
          close(output);
          exit;
        end;
      end
    else
      for i:= 1 to n do
        while p[i]>a[i] do begin
          inc(kol);
          otvm[free]:= i;
          inc(free);
          inc(a[i]);
          if k=kol then begin
            writeln(free-1);
            for j:= 1 to free -1 do
              writeln(otvm[j]);
            close(input);
            close(output);
            exit;
          end;
        end;
end.





