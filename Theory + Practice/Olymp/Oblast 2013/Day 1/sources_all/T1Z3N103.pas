{Сазанович Никита Валерьевич, г.Столбцы, 9 класс, тур 1, задача 3}
var
    a:array[0..400,0..400] of char; p,f:array[0..400,0..400] of int64; n,m:longint; answer:int64;


procedure inputdata;
var i,j:longint; c:char;
begin
  assign(input,'input.txt'); reset(input);
  readln(n,m);
  for i:=1 to n do
    begin
      for j:=1 to m do read(a[i,j]);
      readln;
    end;
  close(input);
end;


procedure solve(start:longint);
var i,j,x,y:longint;
begin
  for i:=1 to n do for j:=1 to m do p[i,j]:=1;
  i:=start;
  while i<=n do
    begin
      for x:=i to n do
        for y:=1 to m do
        if (a[x,y]=a[x-i+1,y]) and (p[x-1,y]<>0) then
          begin
            f[x,y]:=f[x,y-1]+1;
            answer:=answer+f[x,y];
          end;
      p:=f; fillchar(f,sizeof(f),0);
      i:=i+2;
    end;
end;


procedure outputdata;
begin
  assign(output,'output.txt'); rewrite(output);
  writeln(answer);
  close(output);
end;


begin

  inputdata; answer:=0;
  solve(2); solve(3);
  outputdata;

end.
