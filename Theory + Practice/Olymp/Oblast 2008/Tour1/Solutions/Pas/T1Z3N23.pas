{Начина Иван Николаевич,г.Слуцк,11 класс,задача №3}
Program task3;
Var
  a:array[1..131071] of word;
  n,m,i,j,k,re:longint;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  readln(n,m);re:=1;
  for i:=n downto 1 do begin
    a[i]:=re;
    inc(re);
  end;
  for i:=1 to m do Begin
    read(a[n+1]);re:=0;
    inc(n);
    for j:=n-1 downto 1 do if a[j]=a[n] then Begin
      for k:=n  downto j do if a[k]<>0 then inc(re);
      a[j]:=0;
      break;
    end;
    write(re-1,' ');
  end;
  close(input);
  close(output);
end.


