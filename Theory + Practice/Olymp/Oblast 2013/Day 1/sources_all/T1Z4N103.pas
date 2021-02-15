{Сазанович Никита Валерьевич, г.Столбцы, 9 класс, тур 1, задача 4}
var
    g:array[1..2,1..200000] of longint; st,gold:array[1..200000] of longint;
      used:array[1..200000] of boolean; finish,tek,n,m,k:longint;


procedure inputdata;
var nom,i,a:longint;
begin
  assign(input,'input.txt'); reset(input);
  readln(n,m,k);
  for i:=1 to m do begin read(nom); gold[nom]:=1; end;
  readln; tek:=0;
  for i:=1 to n do
    begin
      read(a); inc(tek);
      g[1,tek]:=i; g[2,tek]:=st[a];
      st[a]:=tek;
    end;
  readln; readln(finish);
  close(input);
end;


procedure rec(nom:longint);
var i:longint;
begin
  used[nom]:=true; i:=st[nom];
  while i<>0 do
    begin
      if used[g[1,i]]=false then
        begin
          rec(g[1,i]);
          if gold[g[1,i]]<=k then gold[nom]:=gold[nom]+gold[g[1,i]]
                             else gold[nom]:=gold[nom]+k;
        end;
      i:=g[2,i];
    end;
end;


procedure outputdata;
begin
  assign(output,'output.txt'); rewrite(output);
  writeln(gold[finish]);
  close(output);
end;


begin

  inputdata;
  rec(finish);
  outputdata;

end.
