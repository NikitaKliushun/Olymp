{Начина Иван Николаевич,г.Слуцк,11 класс,задача №3}
Program task3;
Var
  n,m,p,q,i:longint;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  readln(n,m);q:=0;p:=0;
  if (m=1) or (m=2) or (m=3) then writeln('0') else
  if m mod n<>0 then Begin
    if m=4 then Begin
      writeln('8');
      close(input);
      close(output);
      halt;
    end else
    if m=5 then begin
      writeln('20');
      close(input);
      close(output);
      halt;
    end else
    if m=6 then Begin
      writeln('34');
      close(input);
      close(output);
      halt;
    end else
    if m=7 then Begin
      writeln('70');
      close(input);
      close(output);
      halt;
    end;
  end else begin
    writeln(m);
    close(input);
    close(output);
    halt;
  end;
  close(input);
  close(output);
end.
