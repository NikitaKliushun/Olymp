{Сазанович Никита Валерьевич, г.Столбцы, 9 класс, тур 1, задача 2}
var
    answer,pred,del,a,c,i:int64;


procedure inputdata;
begin
  assign(input,'input.txt'); reset(input);
  readln(a,c);
  close(input);
end;


procedure outputdata;
begin
  assign(output,'output.txt'); rewrite(output);
  writeln(answer);
  close(output);
end;


begin

  inputdata;
  i:=1; pred:=round(sqrt(c));
  while i<=pred do
    begin
      if c mod i=0 then
        begin
          if i mod a=0 then inc(answer);
          del:=c div i;
          if (del<>i) and (del mod a=0) then inc(answer);
        end;
      inc(i);
    end;
  outputdata;

end.
