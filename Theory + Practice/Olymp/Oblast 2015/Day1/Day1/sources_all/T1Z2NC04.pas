{Неведомский Дмитрий Альбертович, г.Жодино, 9Б, задача №2}

var min,i,j,m,x,a,b:longint;
    fin,fout:text;
begin
  assign(fin, 'input.txt');
  reset(fin);
  read(fin, a);
  readln(fin,b);
  close(fin);
  if a<b then
    begin
      min:=a;
      b:=a+1;
    end
      else if a>b then
        begin
          min:=b;
          a:=b+1;
        end
          else min:=a;
  x:= 0;
  for i:=1 to min do
    begin
      for j:=i to (min*(min+1)) do
        begin
          if (i mod 2 = 0) or (j mod 2 = 0) then
            begin
              if ((i*j) div 2)<=min then inc(x);
            end
            else if ((i*j-1) div 2)<=min then inc(x);
          end;
    end;
  assign(fout, 'output.txt');
  rewrite(fout);
  if a=b then writeln(fout, x-1) else writeln(fout,x);
  close(fout);
  end.
