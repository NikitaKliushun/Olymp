{Сазанович Никита Валерьевич, г.Столбцы, 9 класс, тур 2, задача 3}
var
    f:array[1..100000] of longint; ans,n,m,i:longint;


procedure inputdata;
var i,a,b:longint;
begin
  assign(input,'input.txt'); reset(input);
  readln(n,m);
  close(input);
end;


procedure outputdata;
begin
  assign(output,'output.txt'); rewrite(output);
  writeln(ans);
  close(output);
end;


begin


  inputdata;
  f[1]:=0;
  for i:=2 to n do f[i]:=f[i-1]+(i div 2);
  ans:=f[n]-m;
  outputdata;

end.

